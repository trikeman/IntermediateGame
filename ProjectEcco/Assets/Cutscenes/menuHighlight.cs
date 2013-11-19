using UnityEngine;
using System.Collections;

public class menuHighlight : MonoBehaviour {
	
	public GameObject playGame;
	public GameObject howToPlay;
	public GameObject credits;
	public GameObject book;
	public GameObject backCredits;
	public GameObject backHTP;
	
	public Transform htpCamera;
	public Transform creditsCamera;
	public Transform menuCamera;

	private Color startcolor;
	private Color backStartColor;
	public int VertTimer = 0;
	public int SelectTimer = 0;
	private const int MAXTIME=15;
	
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
		}
		VertTimer--;
		if (Input.GetButton("Jump")&&SelectTimer<=0){//Input.GetKeyDown (KeyCode.Return)||Input.GetButton("Jump")){
			SelectTimer = MAXTIME;
			if (playGame.renderer.material.color == Color.yellow){
				StartCoroutine(DoAnimation());
			}
			else if (howToPlay.renderer.material.color == Color.yellow){
				Camera.main.transform.position = htpCamera.position;
				Camera.main.transform.rotation = htpCamera.rotation;
				howToPlay.renderer.material.color = startcolor;
				backHTP.renderer.material.color = Color.yellow;
			}
			else if (credits.renderer.material.color == Color.yellow){
				Camera.main.transform.position = creditsCamera.position;
				Camera.main.transform.rotation = creditsCamera.rotation;
				credits.renderer.material.color = startcolor;
				backCredits.renderer.material.color = Color.yellow;
			}
			else if (backCredits.renderer.material.color == Color.yellow){
				Camera.main.transform.position = menuCamera.position;
				Camera.main.transform.rotation = menuCamera.rotation;
				backCredits.renderer.material.color = backStartColor;
				credits.renderer.material.color = Color.yellow;
			}
			else if (backHTP.renderer.material.color == Color.yellow){
				Camera.main.transform.position = menuCamera.position;
				Camera.main.transform.rotation = menuCamera.rotation;
				backHTP.renderer.material.color = backStartColor;
				howToPlay.renderer.material.color = Color.yellow;
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
  yield return new WaitForSeconds(1); // wait for two seconds.
  Debug.Log("This happens 2 seconds later. Tada.");
		Application.LoadLevel("UnderTheBed");
}
	
	
}