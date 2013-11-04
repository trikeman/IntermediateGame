using UnityEngine;
using System.Collections;

public class RoomTrigger : MonoBehaviour {
	
	public EnemyBehavior enemy;
	public GameObject player;
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	
	void onCollisionEnter(Collider other){
		if(other.gameObject==player)
			enemy.triggered=true;
	}
	
	void onCollisionExit(Collider other){
		if(other.gameObject==player)
			enemy.triggered=false;
	}
}
