using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RotateCam : MonoBehaviour {

    // Use this for initialization
    GameObject player;
    public static Quaternion CameraRotation;
	void Start () {
        player = GameObject.Find("Player");
	}
	
	// Update is called once per frame
	void Update ()
    {
        
	}
    private void LateUpdate()
    {
        CameraRotation = this.transform.rotation;
        this.transform.position = player.transform.position;
        transform.RotateAround(transform.position, Vector3.up, Input.GetAxis("RightH")*2);
        int idx;
        if (Input.GetAxis("RightV") > 0.4f || Input.GetAxis("RightV") < -0.4f)
        {
        
                transform.Rotate(new Vector3(Input.GetAxis("RightV"), 0, 0));
            if (transform.eulerAngles.x >= 30 && transform.eulerAngles.x <= 300)
            {
                transform.eulerAngles = new Vector3(30, transform.eulerAngles.y, transform.eulerAngles.z);
            }
            else
            {
                if (transform.eulerAngles.x <= 330 && transform.eulerAngles.x >= 310)
                {
                    transform.eulerAngles = new Vector3(330, transform.eulerAngles.y, transform.eulerAngles.z);
                }
            }
           
        }
            

        //transform.rotation = new Quaternion(transform.rotation.x, transform.rotation.y, 0, 0);
    }
}
