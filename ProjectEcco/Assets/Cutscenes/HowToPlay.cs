﻿using UnityEngine;
using System.Collections;

public class HowToPlay: MonoBehaviour {

private Color startcolor;
	public Transform htpCamera;
	
		void Start(){
		    startcolor = renderer.material.color;
	}
	
	
void OnMouseOver()
{
  
   renderer.material.color = Color.yellow;
				  if (Input.GetMouseButtonDown(0)){
			Camera.main.transform.position = htpCamera.position;
			Camera.main.transform.rotation = htpCamera.rotation;
			//bookScene.animation.Play("Book Opening");
			Debug.Log("Why now?");
	
		}
}
void OnMouseExit()
{
    renderer.material.color = startcolor;
}
}