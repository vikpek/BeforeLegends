using UnityEngine;
using System.Collections;

public class BattleController : MonoBehaviour {

    private enum Actor
    {
        PLAYER, ENEMY
    }

    private enum BattleState
    {
        IDLE, STARTED, ANIMATING
    }

    private enum Action
    { // here below you need to add any new actions
        ATTACK, ENRAGED, FINALATTACK, HEAL, HEALOTHER, DOUBLEDAMAGE, WRATH, SHIELD, REVENGE
    }

    
    GameObject enemy;
    GameObject player;
    int round = 0;

    UnitData playerData;
    UnitData enemyData; 

    bool playerFinished = false;
    bool enemyFinished = false;


    ParticleSystem playerParticles;
    ParticleSystem enemyParticles;

    GameObject enemyWorldObject;
    GameObject playerWorldObject;

    Map

    MapObjectCarrier playerMapObjectCarrier;
    MapObjectCarrier enemyMapObjectCarrier;

    Anims playerAnimation;
    Anims enemyAnimation;
    CharacterAnimations playerAnimator;
    CharacterAnimations enemyAnimator;

    GameStateManager gameSM;

    Action enemyAction;
    Action playerAction;

    BattleState battleState;
    Actor actualActor;

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
	    }else if(battleState == BattleState.ANIMATING && !playerAnimator.isAnimating(playerAnimation) && !enemyAnimator.isAnimating(enemyAnimation)){
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

    bool checkEnded(){
		    if(playerData.hitPoints <= 0){
			    playerWorldObject.SetActive(false);
			    gameSM.endBattle(false, 0);
			    Messenger.instance.send(AllActionsEndedMessage());
			    return true;
		    }else if(enemyData.hitPoints <= 0){
			    enemyWorldObject.SetActive(false);
			    gameSM.endBattle(true, enemyData.expToGain);
			    Messenger.instance.send(AllActionsEndedMessage());
			    return true;
		    }
		    return false;
    }
	
    //function animatePlayer(a : Anims){
    //    playerAnimator.swapAnimation(a);
    //    playerAnimation = a;
    //}

    //function animateEnemy(a : Anims){
    //    enemyAnimator.swapAnimation(a);
    //    enemyAnimation = a;
    //}

    public void init(GameObject player, GameObject enemy){
	    playerWorldObject = player;
	    enemyWorldObject = enemy;
	    battleState = BattleState.IDLE;
	    actualActor = Actor.PLAYER;
	    playerData = player.GetComponent<MapObjectCarrier>().data.battleStats;
	    enemyData = enemy.GetComponent(MapObjectCarrier).data.battleStats;
	    if(this.enemy){
		    GameObject.Destroy(this.enemy);
	    }
	    this.enemy = GameObject.Instantiate(CharacterModelPrefabs.battlePrefabs[enemy.GetComponent(MapObjectCarrier).data.appearanceID]);
	    this.enemy.transform.parent = transform;
	    enemyAnimator = this.enemy.GetComponent(CharacterAnimations);
	    enemyParticles = this.enemy.GetComponent(CharacterParticleController);
	    enemyHPText = this.enemy.GetComponent(HPText);
	    round = 0;
    }

    function Awake(){
	    playerAnimator = player.GetComponent(CharacterAnimations);
	    playerParticles = player.GetComponent(CharacterParticleController);
	    playerHPText = player.GetComponent(HPText); 
    }

    //---MAP INPUT---
    function onInput_Attack(){
	    onInput(Action.ATTACK);
    }

    function onInput_Enraged(){
	    onInput(Action.ENRAGED);
    }

    function onInput_Heal(){
	    onInput(Action.HEAL);
    }

    function onInput_HealOther(){
	    onInput(Action.HEALOTHER);
    }

    //--------------

    //Resolve Input
    function onInput(action : Action){ 
	    if(state == BattleState.IDLE && actor == Actor.PLAYER){
		    playerAction = action;
		    state = BattleState.STARTED;
	    }
    }
}
