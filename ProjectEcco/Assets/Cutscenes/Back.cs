using UnityEngine;
using System.Collections;

public class Back : MonoBehaviour {
	
	public Transform menuCamera;

private Color startcolor;
	
		void Start(){
		    startcolor = renderer.material.color;
	}
	
	
void OnMouseOver()
{
   renderer.material.color = Color.yellow;
		
		if (Input.GetMouseButtonDown(0)){
			Camera.main.transform.position = menuCamera.position;
			Camera.main.transform.rotation = menuCamera.rotation;
			//bookScene.animation.Play("Book Opening");
			Debug.Log("Why now?");
	
		}
}
void OnMouseExit()
{
    renderer.material.color = startcolor;
}
}