using UnityEngine;

[System.Serializable]
public class UnitData{
	public string unitName;
	public float attack ;
	public float defense ;
	public float armor ;
	public float damage ;
	public float hitPoints ;
	public float maxHitPoints ;
	public int actionPoints ;
	public int maxActionPoints ;
	public int speed ;
	public float critStrike ;
	public float critBlock ;
    public int expToGain;
    public float lastDamageReceived = 0;
    public float lastDamageDealt = 0;

    public float calcDamage(UnitData opponent, float actionDamage)
    {
		float actualAttack  = attack - attack * 0.1f + Random.Range(0.0f, 1.0f) * attack * 0.2f;
		float actualDefense  = opponent.defense - opponent.defense * 0.1f + Random.Range(0.0f, 1.0f) * opponent.defense * 0.2f;



		float mad  = actualAttack / actualDefense / 10;
		if(actualAttack < actualDefense){
			mad = -mad;
		}
		
		float damageValue  = damage + damage * mad;
		bool isCrit  = false;
	

		if(Random.Range(0.0f, 1.0f) < critStrike){
			damageValue *= 1.5f;
			isCrit = true;
		}
		
		if(Random.Range(0.0f, 1.0f) < opponent.critBlock){
			#if DEBUG
			Debug.Log("\t\tCritical block!!!");
			#endif
			return 0;
		}

		#if DEBUG
		Debug.Log("Who: " + unitName + "\n" +
		          "\t\tAttack: \t\t\t\t" + attack + "\n" +
		          "\t\tActual Attack: \t\t\t" + actualAttack + "\n\n"+
		          "\t\tDefense: \t\t\t" + defense + "\n" +
		          "\t\tActual Defense: \t\t\t" + actualDefense + "\n" +
		          "\t\tIs Critical: \t\t\t" + isCrit + "\n" +
		          "\t\tDamage: \t\t\t" + damage + "\n" + 
		          "\t\tDamage Value: \t\t\t" + damageValue + "\n" +
		          "\t\tHitpoints " + unitName + "\t\t" + hitPoints + "\n" + 
		          "\t\tHitpoints " + opponent.unitName + "\t" + opponent.hitPoints);
		#endif

		return damageValue / (damageValue + opponent.armor) * damageValue * actionDamage;
	}
	
	public UnitData combine(UnitData data){
		UnitData newData = new UnitData();
		
		newData.attack = attack + data.attack;
		newData.defense = defense + data.defense;
		newData.damage = damage + data.damage;
		newData.armor = armor + data.armor;
		newData.hitPoints = hitPoints + data.hitPoints;
	    newData.maxHitPoints = maxHitPoints + data.maxHitPoints;
		newData.actionPoints = actionPoints + data.actionPoints;
		newData.speed = speed + data.speed;
		newData.critStrike = critStrike + data.critStrike;
		newData.critBlock = critBlock + data.critBlock;
		
		return newData;
	}
}