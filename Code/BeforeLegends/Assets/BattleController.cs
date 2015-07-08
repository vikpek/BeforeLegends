using UnityEngine;
using System.Collections;

    public enum Actor
    {
        PLAYER, ENEMY
    }

    public enum BattleState
    {
        IDLE, STARTED, ANIMATING
    }

    public enum Action
    { // here below you need to add any new actions
        ATTACK, ENRAGED, FINALATTACK, HEAL, HEALOTHER, DOUBLEDAMAGE, WRATH, SHIELD, REVENGE
    }
public class BattleController : MonoBehaviour {

    //every code snippet that is commented out has to be uncomment later! so ignore "!--!" or "!---!" here!


    
    public GameObject enemy;
    public GameObject player;
    public int round = 0;

    public UnitData playerData;
    public UnitData enemyData; 

    public bool playerFinished = false;
    public bool enemyFinished = false;

    public HPText enemyHPText;
    public HPText playerHPText;

    public ParticleSystem playerParticles;
    public ParticleSystem enemyParticles;

    public GameObject enemyWorldObject;
    public GameObject playerWorldObject;


    public MapObjectCarrier playerMapObjectCarrier;
    public MapObjectCarrier enemyMapObjectCarrier;

    public Anims playerAnimation;
    public Anims enemyAnimation;

    public CharacterAnimations playerAnimator;
    public CharacterAnimations enemyAnimator;

    public CharacterModelPrefabs characterModelPrefabs;

    public GameStateManager gameSM;

    public Action enemyAction;
    public Action playerAction;

    public BattleState battleState;
    public Actor actualActor;

	// Use this for initialization
	void Start () {
        battleState = BattleState.IDLE;
        actualActor = Actor.PLAYER;
	
	}
	
    void Update(){
	    if(checkEnded()) return;
	    if(battleState == BattleState.STARTED){
		    playerParticles.Stop(); // tentative
		    enemyParticles.Stop(); // tentative
		
		    battleState = BattleState.ANIMATING;
		    if(actualActor == Actor.PLAYER){
			    player.SendMessage("executeAction", this);
		    }else{
			    enemy.SendMessage("determineAction", this);
			    enemy.SendMessage("executeAction", this);
		    }
	    }else if(battleState == BattleState.ANIMATING && !playerAnimator.isAnimating(playerAnimation) && !enemyAnimator.isAnimating(enemyAnimation))
        {
		    if(actualActor == Actor.PLAYER){
			    battleState = BattleState.STARTED;
			    actualActor = Actor.ENEMY;
		    }else{
			    battleState = BattleState.IDLE;
			    actualActor = Actor.PLAYER;
			    round++;
		    }
	    }
    }


    public bool checkEnded()
    {
		    if(playerData.hitPoints <= 0){
			    playerWorldObject.SetActive(false);
			    GameStateManager.instance.endBattle(false, 0);
                Messenger.instance.send(new AllActionsEndedMessage());
			    return true;
		    }else if(enemyData.hitPoints <= 0){
			    enemyWorldObject.SetActive(false);
                GameStateManager.instance.endBattle(true, enemyData.expToGain);
                Messenger.instance.send(new AllActionsEndedMessage());
			    return true;
		    }
		    return false;
    }

    public void animatePlayer(Anims a)
    {
        playerAnimator.swapAnimation(a);
        playerAnimation = a;
    }
                                            // !--!
    public void animateEnemy(Anims a)
    {
        enemyAnimator.swapAnimation(a);
        enemyAnimation = a;
    }


    // !----!
    public void init(GameObject player, GameObject enemy){
	    playerWorldObject = player;
	    enemyWorldObject = enemy;
	    battleState = BattleState.IDLE;
	    actualActor = Actor.PLAYER;
	    playerData = player.GetComponent<MapObjectCarrier>().data.battleStats;
	    enemyData = enemy.GetComponent<MapObjectCarrier>().data.battleStats;
	    if(this.enemy){
		    GameObject.Destroy(this.enemy);
	    }
	    this.enemy = GameObject.Instantiate(CharacterModelPrefabs.battlePrefabs[enemy.GetComponent<MapObjectCarrier>().data.appearanceID]);
	    this.enemy.transform.parent = transform;
        enemyAnimator = this.enemy.GetComponent<CharacterAnimations>();
        enemyParticles = this.enemy.GetComponent<CharacterParticleController>().heal;
        enemyHPText = this.enemy.GetComponent<HPText>();
	    round = 0;
    }

    void Awake(){
        playerAnimator = player.GetComponent<CharacterAnimations>();
        //playerParticles = player.GetComponent<CharacterParticleController>().heal; // ._. trello (Note Name: CharacterParticleController)
        playerHPText = player.GetComponent<HPText>(); 
    }

    //---MAP INPUT---
    void onInput_Attack(){
	    onInput(Action.ATTACK);
    }

    void onInput_Enraged(){
	    onInput(Action.ENRAGED);
    }

    void onInput_Heal(){
	    onInput(Action.HEAL);
    }

    void onInput_HealOther(){
	    onInput(Action.HEALOTHER);
    }

    //--------------

    //Resolve Input
    public void onInput(Action action)
    { 
	    if(battleState == BattleState.IDLE && actualActor == Actor.PLAYER){
		    playerAction = action;
            battleState = BattleState.STARTED;
	    }
    }
}
