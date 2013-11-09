using UnityEngine;
using System.Collections;
using System;
using System.IO;

public class Metrics : MonoBehaviour {
	
	float startTime;
	float m_timeToComplete;
	
	void Start(){
		startTime = Time.time;
	}
	
	void OnTriggerEnter(Collider col){
		float curTime = Time.time-startTime;
	if (col.gameObject.tag == "Metrics"){
			 m_timeToComplete = curTime;
		}
	}
                                                                     
                                                                     
                                                                                                             
// Metrics-Gathering Method by Riley Pietsch

//IMPORTANT: You need to put "using System;" and "using System.IO;" at the top of your script!
void OnApplicationQuit ()
	{
		string dateTime = System.DateTime.Now.ToString (); 	//Get the time to tack on to the file name
		dateTime = dateTime.Replace ("/", "-");				//Replace slashes with dashes, because Unity thinks they are directories.
		dateTime = dateTime.Replace (":", "-");				//Replace colons with dashes, because Windows/Linx don't accept filenames with colons.
		dateTime = dateTime.Replace (" ", "_");				//Replace spaces with underscores to make shell navigation easier.
		string fileName = "Metrics_" + dateTime;			//Append file name
		
		//This is your main string output with all the data / variables that you want to save, plus accompanying text you want
		string output = "--Your Data-- \n " +
		
				"Time to Complete: " + m_timeToComplete + "\n "; 
				
		
		//The "Metrics" folder in "Assets" needs to exist! Either create one or replace it with a name of another folder you have
		FileStream fs = File.Create ("Assets/Metrics/" + fileName + ".txt"); 	//Need to close this after so something else (StreamWriter) can access it
		fs.Close ();	//Close it!
		StreamWriter sw = new StreamWriter ("Assets/Metrics/" + fileName + ".txt");	//Create a StreamWriter which can write onto the file
		sw.WriteLine (output);	//Write line
		sw.Close ();	//Close access to file
	}

//IMPORTANT: You need to put "using System;" and "using System.IO;" at the top of your script!
}