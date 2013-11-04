using UnityEngine;
using System.Collections;

public class Credits: MonoBehaviour {

private Color startcolor;
	public Transform creditsCamera;
	
		void Start(){
		    startcolor = renderer.material.color;
	}
	
	
void OnMouseOver()
{
  
   renderer.material.color = Color.yellow;
				  if (Input.GetMouseButtonDown(0)){
			Camera.main.transform.position = creditsCamera.position;
			Camera.main.transform.rotation = creditsCamera.rotation;
			//bookScene.animation.Play("Book Opening");
			Debug.Log("Why now?");
	
		}
}
void OnMouseExit()
{
    renderer.material.color = startcolor;
}
}