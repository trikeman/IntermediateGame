using UnityEngine;
using System.Collections;

public class LightBallTemp : MonoBehaviour {
	
	public bool Lit;
	public GameObject lightBeam;
	public GameObject rockMonster;
	public Material light;
	public Material dark;
	
	// Use this for initialization
	void Start () {
		if(gameObject.name=="Light Ball")
			Lit=true;
		else
			Lit=false;
	}
	
	// Update is called once per frame
	void Update () {
		if(Lit){
			renderer.material=light;
		}
		else {
			renderer.material=dark;
		}
	}
	
	void OnCollisionEnter(Collision collision){
		if(collision.gameObject==lightBeam){
			Lit=true;
			Debug.Log ("Light Ball collision w/ Light Beam");
		}
		else if(collision.gameObject==rockMonster && Lit){
			float nearestDistanceSqr = Mathf.Infinity;
		    GameObject[] taggedGameObjects = GameObject.FindGameObjectsWithTag("Door"); 
		    GameObject nearestObj = null;
		 
		    // loop through each tagged object, remembering nearest one found
		    foreach (GameObject obj in taggedGameObjects) {
		        Vector3 objectPos = obj.transform.position;
		        float distanceSqr = (objectPos.sqrMagnitude)-(transform.position.sqrMagnitude);
		 
		        if (distanceSqr < nearestDistanceSqr) {
		            nearestObj = obj;
		            nearestDistanceSqr = distanceSqr;
		        }
		    }
		 
		    Destroy(nearestObj.transform.parent.gameObject);
			Destroy(this.gameObject);
		}
	}
}
