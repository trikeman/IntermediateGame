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
			rigidbody.velocity=monster.rigidbody.velocity*100;
		}
	}
}
