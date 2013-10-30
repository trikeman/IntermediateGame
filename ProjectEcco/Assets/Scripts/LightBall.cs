using UnityEngine;
using System.Collections;

public class LightBall : MonoBehaviour {
	
	public bool lighted;
	public string lightBeamTag = "LightBeam";
	public string darkWallTag = "DarkWall";

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	
	void OnCollisionEnter(Collision col){
		if (col.gameObject.tag == lightBeamTag){
			Destroy(col.gameObject);
			lighted = true;
		}else if (col.gameObject.tag == darkWallTag){
			if (lighted == true){
			Destroy(col.gameObject);
			Destroy(this.gameObject);
			}
		}
	}
}
