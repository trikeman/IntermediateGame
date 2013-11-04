using UnityEngine;
using System.Collections;

public class Highlight : MonoBehaviour {

private Color startcolor;
	
		void Start(){
		    startcolor = renderer.material.color;
	}
	
	
void OnMouseEnter()
{
   renderer.material.color = Color.yellow;
}
void OnMouseExit()
{
    renderer.material.color = startcolor;
}
}