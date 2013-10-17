using UnityEngine;
using System.Collections;

public class BouncyPlatform : MonoBehaviour {
	
	public GameObject player;
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	
	void OnCollisionEnter(Collision collision){
		if(collision.gameObject==player){
			
			//player.transform.Translate(10*player.transform.up*Time.deltaTime);
		}
	}
}
