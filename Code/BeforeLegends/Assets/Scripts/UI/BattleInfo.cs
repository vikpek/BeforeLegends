using UnityEngine;
using UnityEngine.UI;
using System.Collections;


public class BattleInfo : MonoBehaviour {

    public Image playerHpBar;
    public Text playerHpText;

    public Image enemyHpBar;
    public Text enemyHpText;

    public Image enemyHp;
    public Image playerHp;

    public Text playerDamageText;
    public Text playerArmorText;

    public Text enemyDamageText;
    public Text enemyArmorText;

    public BattleController controller;

	// Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	void Update () {
        playerDamageText.text = "Strength: " + controller.playerData.damage;
        playerArmorText.text = "Armor: " + controller.playerData.armor;

        enemyDamageText.text = "Strength: " + controller.enemyData.damage;
        enemyArmorText.text = "Armor " + controller.enemyData.armor;

        playerHpBar.fillAmount = controller.playerData.hitPoints / controller.playerData.maxHitPoints;
        enemyHpBar.fillAmount = controller.enemyData.hitPoints / controller.enemyData.maxHitPoints;

        playerHp.fillAmount = controller.playerData.hitPoints / controller.playerData.maxHitPoints;
        enemyHp.fillAmount = controller.enemyData.hitPoints / controller.enemyData.maxHitPoints;

        playerHpText.text = controller.playerData.hitPoints.ToString("f1") + "/" + controller.playerData.maxHitPoints.ToString("f1");
        enemyHpText.text = controller.enemyData.hitPoints.ToString("f1") + "/" + controller.enemyData.maxHitPoints.ToString("f1");
	}
}
