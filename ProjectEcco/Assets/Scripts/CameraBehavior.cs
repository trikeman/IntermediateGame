using UnityEngine;
using System.Collections;

public class CameraBehavior : MonoBehaviour {

	public GameObject player;
	public float vertDistance = 1f;
	public float horizDistance = 1f;
	public float springConstant = 100f;
	public float dampConstant = 2f;
	
	private Vector3 idealTranslate;
	private Vector3 displacement;
	private Vector3 springAccel;
	private Vector3 velocity = new Vector3(0,0,0);
	
	void Start(){
		dampConstant *= Mathf.Sqrt(springConstant);
		transform.position = player.transform.position-(player.transform.forward*horizDistance)+(player.transform.up*vertDistance);
		//Transform.LookAt(player.transform.positon, player.transform.up);
	}
	
	void Update(){
		float dist = Mathf.Sqrt((vertDistance*vertDistance)+(horizDistance*horizDistance));
		RaycastHit hit;
		Physics.Raycast(player.transform.position,transform.position-player.transform.position, out hit, dist);
		/*if(hit.distance<dist){
			Debug.Log (hit.distance + " " + hit.collider.name);
			Debug.Log ("Wrong Distance");
			Vector3 ray = (player.transform.position-transform.position).normalized*hit.distance;
			ray.y=0;
			idealTranslate = player.transform.position-(player.transform.forward * ray.magnitude) + (player.transform.up*vertDistance);
		}
		else{*/
			//Debug.Log("Hit Player");
			idealTranslate = player.transform.position-(player.transform.forward*horizDistance) + (player.transform.up*vertDistance);
		//}
		
		transform.forward = player.transform.position - idealTranslate;
		transform.forward.Normalize();
		transform.right = Vector3.Cross(player.transform.up, transform.forward);
		transform.up = Vector3.Cross(transform.forward,transform.right);
		
		displacement = transform.position - idealTranslate;
		springAccel = (-1*springConstant*displacement) - (dampConstant * velocity);
		velocity += springAccel * Time.deltaTime;
		transform.position += velocity * Time.deltaTime;
		
		transform.LookAt(player.transform.position, transform.up);
	}
}	
	/*//public variables
	public GameObject player;
	public float backwardOffset = 1.5f;
	public float upOffset = 1.5f;
	public float rightOffset = 0f;
	
	//private variables
	private Vector3 offset;
	
	void Start(){
		updateOffset();
		transform.position=player.transform.position+offset;
	}
	
	void Update(){
		updateOffset();
		transform.position=player.transform.position+offset;
		
		//Always finish by looking at the player
		transform.LookAt(player.transform.position);
	}
	
	void updateOffset(){
		offset = (-1*player.transform.forward*backwardOffset) + (player.transform.right*rightOffset) + (player.transform.up*upOffset);
	}
}* /
	/*public GameObject player;
	public float rightOffset = 0f;
	public float upOffset = 1.5f;
	public float forwardOffset = 1.5f;
	public float speed = 1f;
	private float distance;
	//public float xLimit = 13.5f;
	
	private Vector3 offset;
	//public GameObject parent;
	//private Quaternion idealRot;
	//private Vector3 lastPlayerPos;
	
	// Use this for initialization
	void Start () {
		offset = (player.transform.forward*forwardOffset) + (player.transform.right*rightOffset) + (player.transform.up*upOffset);
		//parent = transform.parent.gameObject;
		//lastPlayerPos = player.transform.position;
		transform.position=player.transform.position+offset;
		transform.LookAt (player.transform.position);
		distance = offset.magnitude;
	}
	
	// Update is called once per frame
	void Update () {
		//rotation
		if(!faceBack ()){
			if(clockwise()){
				//Debug.Log("Clockwise");
				transform.RotateAround(player.transform.position,player.transform.up,Mathf.Acos (Vector3.Dot (transform.forward,player.transform.forward)));
			}
			else{
				//Debug.Log("Counter");
				transform.RotateAround(player.transform.position,-1f*player.transform.up,Mathf.Acos (Vector3.Dot (player.transform.forward,transform.forward)));
			}
		}
		/*if(!faceBack()){
			idealRot.SetLookRotation(player.transform.forward);
		}
		
		if(transform.rotation!=idealRot){
			transform.rotation=Quaternion.Lerp (transform.rotation,idealRot,Time.deltaTime*.01f*speed);
		}
		offset.x =xOffset;
		offset.y=yOffset;
		offset.z=zOffset;* /
		
		//translation
		/*Vector3 movement = player.transform.position-lastPlayerPos;
		lastPlayerPos=player.transform.position;
		transform.position+=movement;*/
		
		/*if((transform.position-player.transform.position).magnitude<offset.magnitude-1){
			transform.position-=player.transform.forward;	
		}
		else if((transform.position-player.transform.position).magnitude>offset.magnitude+1){
			transform.position+=player.transform.forward;
		}* /
		
		RaycastHit hit;
		Ray PCRay=new Ray(transform.position,transform.position-player.transform.position);
		Debug.DrawRay(transform.position,player.transform.position-transform.position);
		
		if(Physics.Raycast(PCRay,out hit, distance)){
			transform.position=hit.collider.transform.position;
		}

		//transform.position=Vector3.Lerp (transform.position,player.transform.position+offset,Time.deltaTime*speed);
		
		//Look at player
		transform.LookAt(player.transform.position);
		/*RaycastHit hit;

        if(Physics.Raycast(Camera.main.ScreenPointToRay(Input.mousePosition), out hit))
		{
			gameObject.transform.LookAt(hit.point);
        }
		
		Vector3 pos = player.transform.position;
		pos.y += 2f;
		pos += player.transform.forward*(-1*distance);
		transform.position=pos;
		
		transform.LookAt(player.transform.position);* /
	}	

	public bool faceBack(){
		Vector3 thisPos= transform.forward;
		Vector3 targetPos = player.transform.forward;
		
		thisPos.y = 0f;
		targetPos.y = 0f;
		
		thisPos.Normalize();
		targetPos.Normalize();
		
		return(Mathf.Acos (Vector3.Dot (thisPos,targetPos))<(Mathf.PI/6)||Mathf.Acos (Vector3.Dot (targetPos,thisPos))<(Mathf.PI/6));
	}
	
	public bool clockwise(){
		Vector3 thisPos= transform.forward;
		Vector3 targetPos = player.transform.forward;
		float angle;
		
		thisPos.y = 0f;
		targetPos.y = 0f;
		
		thisPos.Normalize();
		targetPos.Normalize();
		
		return(Vector3.Cross(thisPos,targetPos).y>=0);
	}
}*/