using UnityEngine;
using System.Collections;

public class DestroyDoor : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if(Input.GetKeyDown(KeyCode.L)){
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
		}
	}
}
