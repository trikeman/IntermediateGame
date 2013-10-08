using UnityEngine;
using System.Collections;

public class MonsterFollow : MonoBehaviour {
	
	public bool following = false;
	public GameObject player;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if(!following&&(distance()<=1)){
			following=true;
		}
		if(following&&(distance ()>2)){
			transform.position=Vector3.Lerp(transform.position,player.transform.position,.5f);
		}
	}
	
	float distance(){
		float xDiff = player.transform.position.x-transform.position.x;
		float zDiff = player.transform.position.z-transform.position.z;
		return (Mathf.Sqrt((xDiff*xDiff)+(zDiff*zDiff)));
	}
}
