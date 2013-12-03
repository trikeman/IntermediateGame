using UnityEngine;
using System.Collections;

public class EndingAnimations : MonoBehaviour {
	
	public GameObject theBook;
	public GameObject mainCamera;
	
	public AudioClip pageOneAudio;
	public AudioClip pageTwoAudio;
	public AudioClip pageThreeAudio;

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
		audio.PlayOneShot(pageOneAudio, 5F);
		yield return new WaitForSeconds(5);
		theBook.animation.Play("Page 2");
		yield return new WaitForSeconds(2);
		audio.PlayOneShot(pageTwoAudio, 5F);
	yield return new WaitForSeconds(6);
		theBook.animation.Play("Page 3");
		yield return new WaitForSeconds(2);
		audio.PlayOneShot(pageThreeAudio, 5F);
		yield return new WaitForSeconds(5);
		theBook.animation.Play("Book Closing");
		yield return new WaitForSeconds(1);
		mainCamera.animation.Play("EndingPanOut");
}
}
