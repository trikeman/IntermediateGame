using UnityEngine;
using System.Collections;
using System;
using System.IO;
using System.Collections.Generic;

public class Metrics : MonoBehaviour {
	
	float startTime;
	List<float> m_timeToComplete=new List<float>();
	public int RockUses = 0;
	public int LightUses = 0;
	public int ReturnUses = 0;
	
	void Start(){
		startTime = Time.time;
	}
	
	void OnTriggerEnter(Collider col){
		float curTime = Time.time-startTime;
	if (col.gameObject.tag == "Metrics"){
			 m_timeToComplete.Add(curTime);
		}
	}
                                                                     
                                                                     
                                                                                                             
// Metrics-Gathering Method by Riley Pietsch

//IMPORTANT: You need to put "using System;" and "using System.IO;" at the top of your script!
void OnApplicationQuit ()
	{
		string dateTime = System.DateTime.Now.ToString (); 	//Get the time to tack on to the file name
		dateTime = dateTime.Replace ("/", "-"); 			//Replace slashes with dashes, because Unity thinks they are directories.
		dateTime = dateTime.Replace (":", "-");
		dateTime = dateTime.Replace (" ", "_");
		string fileName = "Metrics_" + dateTime;			//Append file name
		
		FileStream fs = File.Create ("../../Metrics/" + fileName + ".txt"); 	//Need to close this after so something else (StreamWriter) can access it
		fs.Close ();	//Close it!
		Debug.Log ("File created");
		StreamWriter sw = new StreamWriter ("../../Metrics/" + fileName + ".txt");	//Create a StreamWriter which can write onto the file
		//This is your main string output with all the data / variables that you want to save, plus accompanying text you want
		sw.WriteLine ("--Your Data-- \n");
		for(int i=0; i<m_timeToComplete.Count;i++){
			sw.WriteLine("Time to Complete: " + m_timeToComplete[i] + "\n");
		}
		
		sw.WriteLine("Rock Monster was used: " + RockUses + " times.\n");
		sw.WriteLine("Rock Monster return was used: " + ReturnUses + " times.\n");
		sw.WriteLine("Light Monster was used: " + LightUses + " times.\n");
		
		//The "Metrics" folder in "Assets" needs to exist! Either create one or replace it with a name of another folder you have

		sw.Close ();	//Close access to file
	}

//IMPORTANT: You need to put "using System;" and "using System.IO;" at the top of your script!
}