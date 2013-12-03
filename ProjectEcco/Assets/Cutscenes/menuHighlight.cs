using UnityEngine;
using System.Collections;

public class menuHighlight : MonoBehaviour {
	
	public GameObject playGame;
	public GameObject howToPlay;
	public GameObject credits;
	public GameObject book;
	public GameObject backCredits;
	public GameObject backHTP;
	public GameObject mainCamera;
	
	public Transform htpCamera;
	public Transform creditsCamera;
	public Transform menuCamera;

	private Color startcolor;
	private Color backStartColor;
	public int VertTimer = 0;
	public int SelectTimer = 0;
	private const int MAXTIME=15;
	
	public AudioClip back;
	public AudioClip confirmation;
	public AudioClip down;
	public AudioClip up;
	public AudioClip pageOneAudio;
	public AudioClip pageTwoAudio;
	public AudioClip pageThreeAudio;
	public AudioClip pageFourAudio;
	public AudioClip pageFiveAudio;
	
		void Start(){
		    startcolor = howToPlay.renderer.material.color;
			backStartColor = backHTP.renderer.material.color;
			playGame.renderer.material.color = Color.yellow;
	}
	
	void Update(){
		if (Input.GetAxis("Vertical")<0&&VertTimer<=0){//Input.GetKeyDown(KeyCode.S)||Input.GetKeyDown (KeyCode.DownArrow)){
			if (playGame.renderer.material.color == Color.yellow){
				playGame.renderer.material.color = startcolor;
				howToPlay.renderer.material.color = Color.yellow;
			}
			else if(howToPlay.renderer.material.color == Color.yellow){
				howToPlay.renderer.material.color = startcolor;
				credits.renderer.material.color = Color.yellow;
			}
			VertTimer=MAXTIME;
			audio.PlayOneShot(down, 0.8F);
		}
		else if (Input.GetAxis("Vertical")>0&&VertTimer<=0){//Input.GetKeyDown(KeyCode.UpArrow)||Input.GetKeyDown (KeyCode.W)){
			if (howToPlay.renderer.material.color == Color.yellow){
				howToPlay.renderer.material.color = startcolor;
				playGame.renderer.material.color = Color.yellow;
			}
			else if (credits.renderer.material.color == Color.yellow){
				credits.renderer.material.color = startcolor;
				howToPlay.renderer.material.color = Color.yellow;
			}
			VertTimer = MAXTIME;
			audio.PlayOneShot(up, 0.8F);
		}
		VertTimer--;
		if (Input.GetButton("Jump")&&SelectTimer<=0){//Input.GetKeyDown (KeyCode.Return)||Input.GetButton("Jump")){
			SelectTimer = MAXTIME;
			if (playGame.renderer.material.color == Color.yellow){
				audio.PlayOneShot(confirmation, 0.8F);
				StartCoroutine(DoAnimation());
			}
			else if (howToPlay.renderer.material.color == Color.yellow){
				Camera.main.transform.position = htpCamera.position;
				Camera.main.transform.rotation = htpCamera.rotation;
				howToPlay.renderer.material.color = startcolor;
				backHTP.renderer.material.color = Color.yellow;
				audio.PlayOneShot(confirmation, 0.8F);
			}
			else if (credits.renderer.material.color == Color.yellow){
				Camera.main.transform.position = creditsCamera.position;
				Camera.main.transform.rotation = creditsCamera.rotation;
				credits.renderer.material.color = startcolor;
				backCredits.renderer.material.color = Color.yellow;
				audio.PlayOneShot(confirmation, 0.8F);
			}
			else if (backCredits.renderer.material.color == Color.yellow){
				Camera.main.transform.position = menuCamera.position;
				Camera.main.transform.rotation = menuCamera.rotation;
				backCredits.renderer.material.color = backStartColor;
				credits.renderer.material.color = Color.yellow;
				audio.PlayOneShot(back, 0.8F);
			}
			else if (backHTP.renderer.material.color == Color.yellow){
				Camera.main.transform.position = menuCamera.position;
				Camera.main.transform.rotation = menuCamera.rotation;
				backHTP.renderer.material.color = backStartColor;
				howToPlay.renderer.material.color = Color.yellow;
				audio.PlayOneShot(back, 0.8F);
			}
		}
		SelectTimer--;
	}

/*void OnMouseEnter()
{
   renderer.material.color = Color.yellow;
}
void OnMouseExit()
{
    renderer.material.color = startcolor;
}
*/
	
		IEnumerator DoAnimation()
{
  book.animation.Play("Book Opening");
		mainCamera.animation.Play("ZoomOutForBook");
		Destroy(howToPlay);
		Destroy(credits);
		Destroy(playGame);
		yield return new WaitForSeconds(4);
		audio.PlayOneShot(pageOneAudio, 5F);
  yield return new WaitForSeconds(4); // wait for two seconds.
		book.animation.Play("Page 2");
		yield return new WaitForSeconds(2);
		audio.PlayOneShot(pageTwoAudio, 5F);
	yield return new WaitForSeconds(7);
		book.animation.Play("Page 3");
		yield return new WaitForSeconds(2);
		audio.PlayOneShot(pageThreeAudio, 5F);
		yield return new WaitForSeconds(7);
		book.animation.Play("Page 4");
		yield return new WaitForSeconds(2);
		audio.PlayOneShot(pageFourAudio, 5F);
		yield return new WaitForSeconds(8);
		book.animation.Play("Page 5");
		yield return new WaitForSeconds(2);
		audio.PlayOneShot(pageFiveAudio, 5F);
		yield return new WaitForSeconds(3);
		mainCamera.animation.Play("ZoomIntoBook");
		yield return new WaitForSeconds(4);
		Application.LoadLevel("UnderTheBed");
}
	
	
}