using UnityEngine;
using System.Collections;

public class HowToPlay : MonoBehaviour {

private Color startcolor;
	
		void Start(){
		    startcolor = renderer.material.color;
	}
	
	
void OnMouseEnter()
{
  
   renderer.material.color = Color.yellow;
				  if (Input.GetMouseButtonDown(0)){
			//bookScene.animation.Play("Book Opening");
	
		}
}
void OnMouseExit()
{
    renderer.material.color = startcolor;
}
}