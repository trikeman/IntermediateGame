using UnityEngine;
using System.Collections;

public class LightBall : MonoBehaviour {
	
	public bool lighted;
	public string lightBeamTag = "LightBeam";
	public string darkWallTag = "DarkWall";
	public GameObject thisDarkWall;
	private Color darkColor = Color.black;
	private Color lightColor = Color.white;
	public float duration = 10f;
	public Light thisSpotlight;
	
	public AudioClip darkWallGone;
	
	
	// Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	void Update () {
		if (lighted == false){
			thisSpotlight.enabled = false;
			renderer.material.color = darkColor;
		}
		else if (lighted == true){
			thisSpotlight.enabled = true;
			renderer.material.color = lightColor;
		}
		}
	
	
	void OnCollisionEnter(Collision col){
		if (col.gameObject.tag == lightBeamTag){
			Destroy(col.gameObject);
			lighted = true;
			Destroy(this.gameObject);
			Destroy(thisDarkWall);
			audio.PlayOneShot(darkWallGone, .8F);
		}//else if (col.gameObject.tag == darkWallTag){
		//	if (lighted == true){
		//	Destroy(col.gameObject);
		//	Destroy(this.gameObject);
		//	}
		//}
	}
}
