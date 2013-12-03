using UnityEngine;
using System.Collections;

public class EndingAnimations : MonoBehaviour {
	
	public GameObject theBook;
	public GameObject mainCamera;

	// Use this for initialization
	void Start () {
		StartCoroutine(DoAnimation());
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	
			IEnumerator DoAnimation()
{
  yield return new WaitForSeconds(5);
		theBook.animation.Play("Page 2");
	yield return new WaitForSeconds(6);
		theBook.animation.Play("Page 3");
		yield return new WaitForSeconds(5);
		theBook.animation.Play("Book Closing");
		yield return new WaitForSeconds(1);
		mainCamera.animation.Play("EndingPanOut");
}
}
