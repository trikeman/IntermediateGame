using UnityEngine;
using System.Collections;

public class LevelJump : MonoBehaviour {
	
	public Vector3 Level1Pos;
	public Vector3 Level2Pos;
	public Vector3 Level3Pos;
	public Vector3 Level4Pos;
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if(Input.GetKey(KeyCode.Alpha1)){
			transform.position=Level1Pos;
		}
		else if(Input.GetKey(KeyCode.Alpha2)){
			transform.position=Level2Pos;
		}
		else if(Input.GetKey (KeyCode.Alpha3)){
			transform.position=Level3Pos;
		}
		else if(Input.GetKey(KeyCode.Alpha4)){
			transform.position=Level4Pos;
		}
	}
}
