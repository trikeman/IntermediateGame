using UnityEngine;
using System.Collections;

public class VoiceTrigger : MonoBehaviour {
	
	public AudioClip thisEvent;
	private bool hasPlayed = false;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	
	void OnTriggerEnter(Collider col){
		if (col.gameObject.tag == "Player"){
			if(!hasPlayed){
			audio.PlayOneShot(thisEvent, 1F);
			//Destroy(this.gameObject);
				hasPlayed = true;
			}
		}
	}
}
