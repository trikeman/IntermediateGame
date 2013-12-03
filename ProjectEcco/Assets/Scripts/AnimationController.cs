using UnityEngine;
using System.Collections;

public class AnimationController : MonoBehaviour {
	
	public AnimationClip idleAnimation;
	public AnimationClip walkAnimation;
	public AnimationClip jumpAnimation;
	public ThirdPersonController controller;
	public bool isGrounded;
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		isGrounded=controller.IsGrounded();
		if(Input.GetButtonDown("Jump")){//&&!animation.IsPlaying(jumpAnimation.name)){
			if(!animation.IsPlaying (jumpAnimation.name))
				animation.Play(jumpAnimation.name);
			Debug.Log("Play Jump Animation " + Time.realtimeSinceStartup);
		}
		else if((Input.GetButton("Horizontal")||Input.GetButton("Vertical"))){//&&!animation.IsPlaying(walkAnimation.name)){
			if(!animation.IsPlaying (jumpAnimation.name)||controller.IsGrounded())
				if(!animation.IsPlaying (walkAnimation.name))
					animation.Play (walkAnimation.name);
			Debug.Log("Play Walk Animation " + Time.realtimeSinceStartup);
		}
		else{
			if(!animation.IsPlaying (jumpAnimation.name)||controller.IsGrounded())
				animation.Play(idleAnimation.name);
			Debug.Log("Play Idle Animation " + Time.realtimeSinceStartup);
		}
	}
}
