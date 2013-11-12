using UnityEngine;
using System.Collections;

public class LightMonsterAttack : MonoBehaviour {
	
	public GameObject beam;
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
			GameObject newBeam = (GameObject)GameObject.Instantiate(beam, transform.position+follow.player.transform.forward.normalized,transform.rotation);
			newBeam.rigidbody.AddForce(follow.player.transform.forward*force);
			metrics.LightUses++;
		}
	}
}
