using UnityEngine;
using System.Collections;

public class CameraOrbit : MonoBehaviour {
	
	public GameObject player;
	public float speed = 1f;
	
	private Quaternion idealRot;
	
	// Use this for initialization
	void Start () {
		transform.position=player.transform.position;
	}
	
	// Update is called once per frame
	void Update () {
		transform.position = Vector3.Lerp(transform.position,player.transform.position,Time.deltaTime*speed);
		
		if(!faceBack()){
			//idealRot.SetFromToRotation(transform.forward,player.transform.forward);
			idealRot.SetLookRotation(player.transform.forward);
		}
		
		if(transform.rotation!=idealRot){
			transform.rotation=Quaternion.Lerp(transform.rotation,idealRot,Time.deltaTime *.1f* speed);
		}
	}
	
	public bool faceBack(){
		Vector3 thisPos= transform.forward;
		Vector3 targetPos = player.transform.forward;
		
		thisPos.y = 0f;
		targetPos.y = 0f;
		
		thisPos.Normalize();
		targetPos.Normalize();
		
		return(thisPos==targetPos);
	}
}
