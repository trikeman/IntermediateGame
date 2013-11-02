using UnityEngine;
using System.Collections;

public class RockMonsterAttack : MonoBehaviour {

	public GameObject player;
	
	private MonsterFollow monsterFollow;
	
	// Use this for initialization
	void Start () {
		monsterFollow=(MonsterFollow)GetComponent ("MonsterFollow");
	}
	
	// Update is called once per frame
	void Update () {
		if(Input.GetButtonDown ("Fire1")&&monsterFollow.following){
			monsterFollow.following=false;
			move();
			//follow.following=true;
		}
	}
	
	void move(){
		rigidbody.velocity = player.transform.forward*10;
	}
}
