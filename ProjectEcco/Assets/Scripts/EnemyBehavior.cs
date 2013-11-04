using UnityEngine;
using System.Collections;

public class EnemyBehavior : MonoBehaviour {
	
	public GameObject player;
	public GameObject lightBeam;
	public int TimerSet = 120;
	public float force = 1f;
	public float speed = .001f;
	
	private int timer=0;
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		//if(timer==0)
			transform.position=Vector3.Lerp (transform.position,player.transform.position, Time.time*speed);
		//else if(timer<0)
			//timer=0;
		//else
			//timer--;
	}
	
	void OnCollisionEnter(Collision collision){
		if(collision.gameObject==lightBeam){
			timer=TimerSet;
			rigidbody.AddForce (lightBeam.rigidbody.velocity*force);
			Destroy (lightBeam.gameObject);
		}
	}
}
