using UnityEngine;
using System.Collections;

public class RockReaction : MonoBehaviour {
	
	public GameObject monster;
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if(rigidbody.velocity!=Vector3.zero){
			rigidbody.velocity=Vector3.Lerp (rigidbody.velocity,Vector3.zero,1f);
		}
	}
	
	void OnCollisionEnter(Collision collision){
		if(collision.gameObject==monster){
			Vector3 temp = monster.rigidbody.velocity;
			temp.y = 0;
			rigidbody.velocity=temp*100;
		}
	}
}
