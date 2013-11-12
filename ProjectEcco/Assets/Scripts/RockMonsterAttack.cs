using UnityEngine;
using System.Collections;

public class RockMonsterAttack : MonoBehaviour {

	public GameObject player;
	public Metrics metrics;
	
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
			metrics.RockUses++;
			//follow.following=true;
		}
		if(Input.GetButtonDown ("Return")){
			monsterFollow.following=true;
			metrics.ReturnUses++;
		}
	}
	
	void move(){
		rigidbody.velocity = player.transform.forward*10;
	}
}
