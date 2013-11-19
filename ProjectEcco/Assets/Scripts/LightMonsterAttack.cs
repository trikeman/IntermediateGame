using UnityEngine;
using System.Collections;

public class LightMonsterAttack : MonoBehaviour {
	
	public GameObject beam;
	public GameObject camera;
	public int force = 500;
	public Metrics metrics;
	
	private MonsterFollow follow;
	
	// Use this for initialization
	void Start () {
		follow = GetComponent<MonsterFollow>();
	}
	
	// Update is called once per frame
	void Update () {
		if(follow.following&&Input.GetButtonDown("Fire2")){
			Vector3 direction = camera.transform.forward;
			direction.y=0;
			direction.Normalize();
			GameObject newBeam = (GameObject)GameObject.Instantiate(beam, transform.position+direction,transform.rotation);
			newBeam.rigidbody.AddForce(direction*force);
			metrics.LightUses++;
		}
	}
}
