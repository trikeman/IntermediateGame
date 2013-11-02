/*using UnityEngine;
using System.Collections;

public class CameraBehavior : MonoBehaviour {

	public GameObject player;
	public float distance = 1.5f;
	public float speed = 1f;
	
	// Use this for initialization
	void Start () {
		transform.LookAt (player.transform.position);
	}
	
	// Update is called once per frame
	void Update () {
		/*RaycastHit hit;

        if(Physics.Raycast(Camera.main.ScreenPointToRay(Input.mousePosition), out hit))
		{
			gameObject.transform.LookAt(hit.point);
        }* /
		
		Vector3 pos = player.transform.position;
		pos.y += 2f;
		pos += player.transform.forward*(-1*distance);
		transform.position=pos;
		
		transform.LookAt(player.transform.position);
	}
}*/
using UnityEngine;
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
 
 
}
