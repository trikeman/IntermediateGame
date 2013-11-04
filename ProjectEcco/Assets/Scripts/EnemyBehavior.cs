using UnityEngine;
using System.Collections;

public class EnemyBehavior : MonoBehaviour {
	
	public GameObject player;
	public bool triggered;
	
	void Update(){
		if(distance()<10f)
			transform.position=Vector3.Lerp(transform.position,player.transform.position,.01f);
	}
	
	float distance(){
		float xDiff = player.transform.position.x-transform.position.x;
		float yDiff = player.transform.position.y-transform.position.y;
		float zDiff = player.transform.position.z-transform.position.z;
		return (Mathf.Sqrt((xDiff*xDiff)+(yDiff*yDiff)+(zDiff*zDiff)));
	}
	/*public GameObject lightBeam;
	public int TimerSet = 120;
	public float force = 1f;
	public float speed = .001f;
	public Collider triggerVol;
	public bool triggered = false;
	
	private int timer=0;
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		//if(triggered){
			if(timer==0)
				transform.position=Vector3.Lerp(transform.position,player.transform.position,.01f);
			else if(timer<0)
				timer=0;
			else
				timer--;
		//}
	}
	
	void OnCollisionEnter(Collision collision){
		if(collision.gameObject==lightBeam){
			timer=TimerSet;
			rigidbody.AddForce (lightBeam.rigidbody.velocity*force);
			Destroy (lightBeam.gameObject);
		}
	}*/
}
