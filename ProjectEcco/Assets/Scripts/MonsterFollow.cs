using UnityEngine;
using System.Collections;

public class MonsterFollow : MonoBehaviour {
	
	public bool following = false;
	public GameObject player;
	public float jumpForce = 3000;
	public float speed;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		/*GameObject temp;
		if((Vector3.Distance (transform.position, (temp=GameObject.FindWithTag("Unmovable")).transform.position))>.1f && transform.position.y<=temp.transform.position.y){
			Vector3 direction = (transform.position - temp.transform.position);
			direction.Normalize();
			transform.Translate (-1*direction);
		}*/
		
		if(!following&&(distance()<=1)){
			following=true;
		}
		if(following&&jump()){
			//transform.position=Vector3.Lerp (transform.position,new Vector3(transform.position.x,player.transform.position.y+1,transform.position.z), speed);//rigidbody.AddForce (jumpForce*Vector3.up);
			rigidbody.AddForce(player.transform.up.normalized*jumpForce);
		}
		if(following&&distance ()>10){
			transform.position=player.transform.position-5*player.transform.forward;
		}
		else if(following&&(distance ()>1)){
			transform.position=Vector3.Lerp(transform.position,player.transform.position,speed);
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
