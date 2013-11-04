using UnityEngine;
using System.Collections;
	
public class PlayGame : MonoBehaviour {
	
	public GameObject book;
	private Color startcolor;
	
	void Start(){
		    startcolor = renderer.material.color;
	}
	
void OnMouseOver()
{

   renderer.material.color = Color.yellow;
		
		  if (Input.GetMouseButtonDown(0)){
			StartCoroutine(DoAnimation()); 
			//book.animation.Play("Book Opening");
			//Debug.Log("let's load things");
			//Application.LoadLevel("UnderTheBed");
		}
             
}
void OnMouseExit()
{
    renderer.material.color = startcolor;
}
	
	IEnumerator DoAnimation()
{
  book.animation.Play("Book Opening");
  yield return new WaitForSeconds(1); // wait for two seconds.
  Debug.Log("This happens 2 seconds later. Tada.");
		Application.LoadLevel("UnderTheBed");
}
	 
}