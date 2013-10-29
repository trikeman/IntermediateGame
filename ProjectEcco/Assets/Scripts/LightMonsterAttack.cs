using UnityEngine;
using System.Collections;

public class LightMonsterAttack : MonoBehaviour {
	
	public GameObject beam;
	public int force;
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if(Input.GetButtonDown("Fire2")){
			GameObject.Instantiate(beam, transform.position,transform.rotation);
			beam.rigidbody.AddForce(transform.forward*force);
		}
	}
}
