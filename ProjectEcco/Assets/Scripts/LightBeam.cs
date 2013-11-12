using UnityEngine;
using System.Collections;

public class LightBeam : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	
	void OnCollisionEnter(Collision collision){
		if(collision.gameObject.tag=="Enemy"){
		
		}
		else if(collision.gameObject.tag=="LightBall"){
			Debug.Log("Light Beam collision w/ Light Ball");
			LightBallTemp change=(LightBallTemp)collision.gameObject.GetComponent ("LightBallTemp");
			change.Lit=true;
		}
		else{
			Destroy(this.gameObject);
		}
	}
}
