using UnityEngine;
using System.Collections;

public class CameraBehavior : MonoBehaviour {

	public GameObject player;
	public float xOffset = 1.5f;
	public float yOffset = 1.5f;
	public float zOffset = 1.5f;
	public float speed = 1f;
	//public float xLimit = 13.5f;
	
	private Vector3 offset;
	public GameObject parent;
	private Quaternion idealRot;
	private Vector3 lastPlayerPos;
	
	// Use this for initialization
	void Start () {
		offset = new Vector3(xOffset,yOffset,zOffset);
		//parent = transform.parent.gameObject;
		lastPlayerPos = player.transform.position;
		transform.position=player.transform.position+offset;
		transform.LookAt (player.transform.position+offset);
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
		offset.z=zOffset;*/
		//translation
		/*Vector3 movement = player.transform.position-lastPlayerPos;
		lastPlayerPos=player.transform.position;
		transform.position+=movement;*/
		transform.position=Vector3.Lerp (transform.position,player.transform.position+offset,Time.deltaTime*speed);
		
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
		
		transform.LookAt(player.transform.position);*/
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
}
/*using UnityEngine;
using System.Collections;
 
[AddComponentMenu("Camera-Control/Mouse Orbit with zoom")]
public class CameraBehavior : MonoBehaviour {
 
    public Transform target;
    public float distance = 5.0f;
    public float xSpeed = 120.0f;
    public float ySpeed = 120.0f;
 
    public float yMinLimit = -20f;
    public float yMaxLimit = 80f;
 
    public float distanceMin = .5f;
    public float distanceMax = 15f;
 
    float x = 0.0f;
    float y = 0.0f;
 
	// Use this for initialization
	void Start () {
        Vector3 angles = transform.eulerAngles;
        x = angles.y;
        y = angles.x;
 
        // Make the rigid body not change rotation
        if (rigidbody)
            rigidbody.freezeRotation = true;
	}
 
    void LateUpdate () {
    if (target) {
        x += Input.GetAxis("Mouse X") * xSpeed * distance * 0.02f;
        y -= Input.GetAxis("Mouse Y") * ySpeed * 0.02f;
 
        y = ClampAngle(y, yMinLimit, yMaxLimit);
 
        Quaternion rotation = Quaternion.Euler(y, x, 0);
 
        distance = Mathf.Clamp(distance - Input.GetAxis("Mouse ScrollWheel")*5, distanceMin, distanceMax);
 
        RaycastHit hit;
        if (Physics.Linecast (target.position, transform.position, out hit)) {
                distance -=  hit.distance;
        }
        Vector3 negDistance = new Vector3(0.0f, 0.0f, -distance);
        Vector3 position = rotation * negDistance + target.position;
 
        transform.rotation = rotation;
        transform.position = position;
 
    }
 
}
 
    public static float ClampAngle(float angle, float min, float max)
    {
        if (angle < -360F)
            angle += 360F;
        if (angle > 360F)
            angle -= 360F;
        return Mathf.Clamp(angle, min, max);
    }
 
 
}*/
