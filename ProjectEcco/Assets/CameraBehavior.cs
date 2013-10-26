using UnityEngine;
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
        }*/
		
		Vector3 pos = player.transform.position;
		pos.y += 2f;
		pos += player.transform.forward*(-1*distance);
		transform.position=pos;
		
		transform.LookAt(player.transform.position);
	}
}
