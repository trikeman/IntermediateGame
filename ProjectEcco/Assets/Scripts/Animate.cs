using UnityEngine;
using System.Collections;

public class Animate : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	if (Input.GetKey(KeyCode.W) || Input.GetKey(KeyCode.A) ||Input.GetKey(KeyCode.S) ||Input.GetKey(KeyCode.D) ||Input.GetKey(KeyCode.UpArrow) ||Input.GetKey(KeyCode.DownArrow) ||Input.GetKey(KeyCode.LeftArrow) ||Input.GetKey(KeyCode.RightArrow)){
			animation.Play("Walk");
		}
	}
}
