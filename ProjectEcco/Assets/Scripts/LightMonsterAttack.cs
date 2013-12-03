using UnityEngine;
using System.Collections;

public class LightMonsterAttack : MonoBehaviour {
	
	public GameObject beam;
	public GameObject camera;
	public int force = 500;
	public Metrics metrics;
	
	private MonsterFollow follow;
	
	public AudioClip lightBeam;
	
	// Use this for initialization
	void Start () {
		follow = GetComponent<MonsterFollow>();
	}
	
	// Update is called once per frame
	void Update () {
		if(follow.following){
			Vector3 forward=camera.transform.forward;
			forward.y = 0;
			forward.Normalize();
			transform.forward=forward;
		}
		if(follow.following&&Input.GetButtonDown("Fire2")){
			Shoot(false);
		}
	}
	
	public void Shoot(bool towardsScreen){
		Vector3 direction = camera.transform.forward;
		if(towardsScreen)
			direction = -1*direction;
		direction.y=0;
		direction.Normalize();
		GameObject newBeam = (GameObject)GameObject.Instantiate(beam, transform.position+direction,transform.rotation);
		newBeam.rigidbody.AddForce(direction*force);
		audio.PlayOneShot(lightBeam, .6F);
		metrics.LightUses++;
	}
}
