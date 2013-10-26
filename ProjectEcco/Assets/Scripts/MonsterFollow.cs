using UnityEngine;
using System.Collections;

public class MonsterFollow : MonoBehaviour {
	
	public bool following = false;
	public GameObject player;
	public float jumpForce = 2000;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if(!following&&(distance()<=1)){
			following=true;
		}
		if(following&&jump()){
			rigidbody.AddForce (jumpForce*Vector3.up);
		}
		if(following&&(distance ()>2)){
			transform.position=Vector3.Lerp(transform.position,player.transform.position,.01f);
		}
	}
	
	float distance(){
		float xDiff = player.transform.position.x-transform.position.x;
		float yDiff = player.transform.position.y-transform.position.y;
		float zDiff = player.transform.position.z-transform.position.z;
		return (Mathf.Sqrt((xDiff*xDiff)+(yDiff*yDiff)+(zDiff*zDiff)));
	}
	
	bool jump(){
		bool shouldJump=false;
		
		float yDiff = player.transform.position.y-transform.position.y;
		
		if(player.transform.position.y>transform.position.y){
			if(yDiff>.75f){
				//if(distance ()<=2f){
					if(grounded()){
						shouldJump = true;
					//}
				}
			}
		}
		return shouldJump;
	}
	
	bool grounded(){
		return Physics.Raycast (transform.position,-Vector3.up,collider.bounds.extents.y+.1f);
	}
}
