using UnityEngine;
using System.Collections;

[System.Serializable]
public class ParticleSystemCollection
{
    public ParticleSystem[] attack;
    public ParticleSystem[] heal;
    public ParticleSystem[] shield;
    public ParticleSystem[] stun;
    public ParticleSystem[] wrath;
    public ParticleSystem[] revenge;
    public ParticleSystem[] enemyAttack;
    public ParticleSystem[] enemyHeal;
    public ParticleSystem[] enemyCritAttack;
}

public class CharacterParticleController : MonoBehaviour
{
    public ParticleSystemCollection allParticleSystems;

    public void PlayerAttackParticles()
    {
        for (int i = 0; i < allParticleSystems.attack.Length; i++)
            allParticleSystems.attack[i].Play();
    }
    public void PlayerHealParticles()
    {
        for (int i = 0; i < allParticleSystems.heal.Length; i++)
            allParticleSystems.heal[i].Play();
    }
    public void PlayerShieldParticles()
    {
        for (int i = 0; i < allParticleSystems.shield.Length; i++)
            allParticleSystems.shield[i].Play();
    }
    public void PlayerStunParticles()
    {
        for (int i = 0; i < allParticleSystems.stun.Length; i++)
            allParticleSystems.stun[i].Play();
    }
    public void PlayerWrathParticles()
    {
        for (int i = 0; i < allParticleSystems.wrath.Length; i++)
            allParticleSystems.wrath[i].Play();
    }
    public void PlayerRevengeParticles()
    {
        for (int i = 0; i < allParticleSystems.revenge.Length; i++)
            allParticleSystems.revenge[i].Play();
    }
    public void EnemyAttackParticles()
    {
        for (int i = 0; i < allParticleSystems.enemyAttack.Length; i++)
            allParticleSystems.enemyAttack[i].Play();
    }
    public void EnemyHealParticles()
    {
        for (int i = 0; i < allParticleSystems.enemyHeal.Length; i++)
            allParticleSystems.enemyHeal[i].Play();
    }
    public void EnemyCriticalParticles()
    {
        for (int i = 0; i < allParticleSystems.enemyCritAttack.Length; i++)
            allParticleSystems.enemyCritAttack[i].Play();
    }
}
