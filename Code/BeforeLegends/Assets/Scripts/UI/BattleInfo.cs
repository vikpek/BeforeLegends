using UnityEngine;
using UnityEngine.UI;
using System.Collections;


public class BattleInfo : MonoBehaviour {

    public Image playerHpBar;
    public Text playerHpText;

    public Image enemyHpBar;
    public Text enemyHpText;

    public BattleController controller;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        playerHpBar.fillAmount = controller.playerData.hitPoints / controller.playerData.maxHitPoints;
        enemyHpBar.fillAmount = controller.enemyData.hitPoints / controller.enemyData.maxHitPoints;

        playerHpText.text = controller.playerData.hitPoints.ToString("f1") + "/" + controller.playerData.maxHitPoints.ToString("f1");
        enemyHpText.text = controller.enemyData.hitPoints.ToString("f1") + "/" + controller.enemyData.maxHitPoints.ToString("f1");
	}
}
