﻿using UnityEngine;
using System.Collections;

public class VoiceTrigger : MonoBehaviour {
	
	public AudioClip thisEvent;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	
	void OnTriggerEnter(Collider col){
		if (col.gameObject.tag == "Player"){
			audio.PlayOneShot(thisEvent, 0.8F);
			Destroy(this.gameObject);
		}
	}
}
