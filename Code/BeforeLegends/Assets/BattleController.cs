using UnityEngine;
using UnityEngine.UI;
using System.Collections;

    public enum Actor
    {
        PLAYER, ENEMY, NOONE
    }
    [System.Serializable]
    public enum Action
    { // here below you need to add any new actions
        ATTACK, ENRAGED, FINALATTACK, HEAL, HEALOTHER, DOUBLEDAMAGE, WRATH, SHIELD, REVENGE, STUN, SKIP
    }

    public enum BattleState
    {
        ANIMTING, IDLE, PLAYERDEAD, ENEMYDEAD, ANIMATEDEATH, ANIMATEDEATHPLAYER, ANIMATEDEATHENEMY
    }

public class BattleController : MonoBehaviour{

    //every code snippet that is commented out has to be uncomment later! so ignore "!--!" or "!---!" here!

    private static BattleController _instance;

    public static BattleController instance
    {
        get
        {
            if (_instance == null)
                _instance = GameObject.FindObjectOfType<BattleController>();
            return _instance;
        }
    }
    
    public GameObject enemy;
    public GameObject player;
    public int round = 0;

    public UnitData playerData;
    public UnitData enemyData;

    public bool playerFinished = false;
    public bool enemyFinished = false;

    public HPText enemyHPText;
    public HPText playerHPText;

    public CharacterParticleController playerParticles;
    public CharacterParticleController enemyParticles;

    public GameObject enemyWorldObject;
    public GameObject playerWorldObject;


    public MapObjectCarrier playerMapObjectCarrier;
    public MapObjectCarrier enemyMapObjectCarrier;

    public CharacterAnimations playerAnimator;
    public CharacterAnimations enemyAnimator;

    public ParticleSystemCollection enemyParticleSystems;
    public ParticleSystemCollection playerParticleSystems;

    public CharacterModelPrefabs characterModelPrefabs;

    public GameStateManager gameSM;

    public Action enemyAction;
    public Action playerAction;

    public Actor actualActor;

    [HideInInspector] public bool stunned;
    [HideInInspector] public bool shielded;
    [HideInInspector] public bool revenge;
    [HideInInspector] public string playerName = "Olaf";
    [HideInInspector] public string enemyName;

    public Text battleLog;
    public Scrollbar scrollBar;

    public BattleState battleState;

	// Use this for initialization
	void Start () {

	}

    bool test = true;

    public IEnumerator SetBattleStateAndActor(BattleState bs, Actor aA, float delay)
    {
        yield return new WaitForSeconds(delay);
        battleState = bs;
        actualActor = aA;
        playerAnimator.StopAnimation();
        enemyAnimator.StopAnimation();
    }

    void Update()
    {

        if (Input.GetKeyDown(KeyCode.F))
        {
            enemyData.hitPoints = 0;
        }
        if (Input.GetKeyDown(KeyCode.U)) {
            PrintToBattlelog("Olaf can't be stopped and deals around 9 billion damage. " + enemyName + " can't stand the mighty power and stares in disbelief as the fury of an exploding sun that is olaf's strength rains down on him.");
        }

        CheckEnded();

        if (battleState == BattleState.PLAYERDEAD)
        {
            playerAnimator.Animate(4, 0.5f);
            battleState = BattleState.ANIMATEDEATHPLAYER;
        }

        if (battleState == BattleState.ENEMYDEAD)
        {
            enemyAnimator.Animate(4, 0.5f);
            battleState = BattleState.ANIMATEDEATHENEMY;
        }

        if ((battleState == BattleState.ANIMATEDEATHPLAYER && playerAnimator.isAnimationPlaying() == -1) || (battleState == BattleState.ANIMATEDEATHENEMY && enemyAnimator.isAnimationPlaying() == -1))
        {
            EndBattle();
        }

        if(actualActor == Actor.ENEMY)
        {
            if (playerAnimator.isAnimationPlaying() == -1 && enemyAnimator.isAnimationPlaying() == -1)
            {
            }
        }

        if(actualActor == Actor.PLAYER)
        {
            if(battleState == BattleState.IDLE)
            {
                if (playerAnimator.isAnimationPlaying() == -1)
                {
                    playerAnimator.Animate(0);
                }
                if (enemyAnimator.isAnimationPlaying() == -1)
                {
                    enemyAnimator.Animate(0);
                }
            }
            else
            {
                if(playerAnimator.isAnimationPlaying() == -1)
                {
                    if(enemyAnimator.isAnimationPlaying() == -1)
                    {
                        actualActor = Actor.ENEMY;
                        battleState = BattleState.IDLE;
                    }
                }
            }
        }
        else
        {
            if ((battleState == BattleState.IDLE))
            {
                enemy.SendMessage("determineAction", instance);
                enemy.SendMessage("executeAction", instance);
            }
            else if (enemyAnimator.isAnimationPlaying() == -1)
            {
                if (playerAnimator.isAnimationPlaying() == -1)
                {
                    actualActor = Actor.PLAYER;
                    battleState = BattleState.IDLE;
                }
            }
        }
    }

    public void CheckEnded()
    {
        if (battleState != BattleState.ANIMATEDEATH)
        {
            if (playerData.hitPoints <= 0)
            {
                battleState = BattleState.PLAYERDEAD;
                actualActor = Actor.NOONE;
            }
            else if (enemyData.hitPoints <= 0)
            {
                battleState = BattleState.ENEMYDEAD;
                actualActor = Actor.NOONE;
            }
        }
    }

    public bool EndBattle()
    {
		    if(playerData.hitPoints <= 0)
            {
			    playerWorldObject.SetActive(false);
			    GameStateManager.instance.endBattle(false, 0);
                Messenger.instance.send(new AllActionsEndedMessage());
			    return true;
		    }
            else if(enemyData.hitPoints <= 0)
            {
                player.GetComponent<StartAnimation>().Reset();
                enemyWorldObject.transform.parent.gameObject.SetActive(false);
                enemyWorldObject.GetComponent<EnemyAI>().enabled = false;
                enemyWorldObject.GetComponent<LPathfinding>().enabled = false;
                GameStateManager.instance.endBattle(true, enemyData.expToGain);
                Messenger.instance.send(new AllActionsEndedMessage());
                TurnManager.instance.NextEnemyTurn();
			    return true;
		    }
		    return false;
    }

    public void init(GameObject iPlayer, GameObject iEnemy){
	    playerWorldObject = iPlayer;
        enemyWorldObject = iEnemy;

	    playerData = iPlayer.GetComponent<MapObjectCarrier>().data.battleStats;
	    enemyData = iEnemy.GetComponent<MapObjectCarrier>().data.battleStats;

	    actualActor = Actor.PLAYER;

        int appID = iEnemy.GetComponent<MapObjectCarrier>().data.appearanceID;
        battleState = BattleState.IDLE;

	    if(enemy){
		    GameObject.Destroy(enemy);
	    }

	    enemy = GameObject.Instantiate(CharacterModelPrefabs.battlePrefabs[appID]);
        enemy.SetActive(true);
        
        playerAnimator = player.GetComponent<CharacterAnimations>();
        enemyAnimator = enemy.GetComponent<CharacterAnimations>();

	    enemy.transform.parent = transform;
        enemyAnimator = enemy.GetComponent<CharacterAnimations>();

        enemyParticles = enemy.GetComponent<CharacterParticleController>();
        playerParticles = player.GetComponent<CharacterParticleController>();

        enemyParticles.allParticleSystems = enemyParticleSystems;
        playerParticles.allParticleSystems = playerParticleSystems;
        
        enemyHPText = enemy.GetComponent<HPText>();
        playerHPText = player.GetComponent<HPText>();

	    round = 0;

        battleLog.text = "";
        AssignEnemyName();

    }

    public void PrintToBattlelog(string content) {
        battleLog.text += content + "\n\n";
        scrollBar.value = 0;

    }

    void AssignEnemyName() {
        if (enemy.name.Contains("Ice"))
            enemyName = "Ice ";
        else if (enemy.name.Contains("Desert"))
            enemyName = "Desert ";
        else if (enemy.name.Contains("Silver"))
            enemyName = "Silver ";
        else if (enemy.name.Contains("Green"))
            enemyName = "Green ";
        if (enemy.name.Contains("Lion"))
            enemyName += "Lion";
        else if (enemy.name.Contains("Jackal"))
            enemyName += "Jackal";
        else if (enemy.name.Contains("Mammoth"))
            enemyName += "Mammoth";
        if (enemy.name.Contains("HornedLion"))
            enemyName = "Horned Lion";
    }
}
