using UnityEngine;
using System.Collections;

public class PlayGame : MonoBehaviour {
	

private Color startcolor;
void OnMouseOver()
{
    startcolor = renderer.material.color;
   renderer.material.color = Color.yellow;
		
		  if (Input.GetMouseButtonDown(0)){
			//bookScene.animation.Play("Book Opening");
			Debug.Log("let's load things");
			Application.LoadLevel("UnderTheBed");
		}
             
}
void OnMouseExit()
{
    renderer.material.color = startcolor;
}
}