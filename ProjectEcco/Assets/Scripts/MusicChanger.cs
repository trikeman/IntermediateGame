using UnityEngine;
using System.Collections;

public class MusicChanger : MonoBehaviour {
	
	public AudioSource audio1;
	public AudioSource audio2;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
		void OnTriggerEnter(Collider col){
		if (col.gameObject.tag == "Player"){
		ChangeMusic();
		}
	}
	
	private IEnumerator ChangeMusic()
{
    float fTimeCounter = 0f;
 
    while(!(Mathf.Approximately(fTimeCounter, 1f)))
    {
       fTimeCounter = Mathf.Clamp01(fTimeCounter + Time.deltaTime);
       audio1.volume = 1f - fTimeCounter;
       audio2.volume = fTimeCounter;
       yield return new WaitForSeconds(0.02f);
    }
 
    StopCoroutine("ChangeMusic");
}
}
