using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bird : MonoBehaviour
{

    // Use this for initialization
    public float speed = 0f;
    public float jumpSpeed = 15f;
    public float gravity = 10f;
    public float axisH = 0;
    public float axisV = 0;

    public static Bird thisObj;

    private Vector3 moveDirection = Vector3.zero;
    bool isStanding = false;
    bool goingup = false;
    float TimeSinceGoingUp = 0;
    float TimeSinceAirDashing = 0;
    float TimeSinceDodge = 0;
    SphereCollider coll;
    Bounds level;
    Quaternion Rotations;
    CharacterController controller;
    Animator anim;
    bool startedwalking;
    bool stoppedwalking;
    bool airdashing = false;
    bool canAirDash = true;
    bool slide = false;
    bool firstframeslide = false;
    bool dodge = false;
    bool sprint = true;
    bool attack1 = false;
    float timesinceattack1 = 5;
    TrailRenderer trail;
    Vector3 hitnormal;
    Vector3 hitpoint;
    Vector3 Dodgedirection;
    Vector3 CameraWhenDodged;
    ControllerColliderHit collidingwith;


    void Start()
    {

        thisObj = this.GetComponent<Bird>();

        thisObj.enabled = false;
        controller = GetComponent<CharacterController>();
        coll = this.transform.GetComponent<SphereCollider>();
        level = GameObject.Find("something").GetComponent<MeshCollider>().bounds;
        Rotations = this.transform.rotation;
        anim = GetComponent<Animator>();
        //trail = GameObject.Find("trailBlue").GetComponent<TrailRenderer>();
        // trail.GetComponent<Renderer>().enabled = false;
        //GetComponent<TrailRenderer>().enabled;
    }


    void OnCollisionEnter(Collision collision)
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            //this.GetComponent<Rigidbody>().AddForce(0,600, 0);
        }
        isStanding = true;
    }

    private void OnCollisionExit(Collision collision)
    {
        isStanding = false;

    }
    private void OnCollisionStay(Collision collision)
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            //this.GetComponent<CharacterController>().detectCollisions;
            //            this.GetComponent<Rigidbody>().AddForce(0,600, 0);
        }
    }
    // Update is called once per frame

    void Update()
    {
        //transform.Translate(new Vector3(Input.GetAxisRaw("Horizontal")*0.5f, 0, Input.GetAxisRaw("Vertical")*0.5f));
        // if(isStanding==false)
        // this.GetComponent<Rigidbody>().AddForce(0, -1, 0);
        //this.transform.Find("Main Camera").localPosition = Input.mousePosition;



        axisH = Input.GetAxis("Horizontal");
        axisV = Input.GetAxis("Vertical");

        if (!slide)
        {
            if (!dodge && !attack1)
            {
                if (controller.isGrounded)
                {

                    gravity = 1500;
                    canAirDash = true;
                    if (stoppedwalking == true)
                    {
                        sprint = false;
                    }

                    if (axisV != 0 || axisH != 0)
                    {
                        if (startedwalking == false)
                        {
                            anim.Play("idlePlayer", -1, 0.0f);

                        }
                        if (startedwalking == false && sprint)
                        {
                            anim.Play("sprint", -1, 0.0f);

                        }
                        startedwalking = true;
                        stoppedwalking = false;
                        if (Input.GetKeyDown(KeyCode.Joystick1Button2))
                        {
                            anim.Play("dodge", -1, 0.0f);
                            dodge = true;
                            sprint = false;
                            TimeSinceDodge = 0;


                        }

                    }
                    else
                    {

                        if (stoppedwalking == false)
                        {

                            anim.Play("actualidle", -1, 0.0f);

                        }
                        stoppedwalking = true;
                        startedwalking = false;
                    }

                    moveDirection = new Vector3(Input.GetAxis("Horizontal") * speed, 0, Input.GetAxis("Vertical") * speed);


                    moveDirection = transform.TransformDirection(moveDirection);

                    moveDirection *= speed;


                    if (Input.GetButtonDown("Jump"))
                    {
                        gravity = 100f;
                        stoppedwalking = false;
                        startedwalking = false;
                        moveDirection.y = jumpSpeed;
                        float rnd = Random.Range(0f, 2);
                        if (rnd > 1)
                            anim.Play("Jump1", -1, 0f);
                        else
                            anim.Play("Jump2", -1, 0f);

                    }
                    if (Input.GetButtonDown("Fire1"))
                    {
                        anim.Play("attack1", -1, 0f);
                        timesinceattack1 = 0;

                        attack1 = true;


                    }
                }
                else
                {
                    if (Input.GetButtonDown("Jump"))
                    {
                        gravity = 100f;
                        stoppedwalking = false;
                        startedwalking = false;
                        moveDirection.y = jumpSpeed / 2;
                        float rnd = Random.Range(0f, 2);
                        if (rnd > 1)
                            anim.Play("Jump1", -1, 0f);
                        else
                            anim.Play("Jump2", -1, 0f);

                    }
                    stoppedwalking = false;
                    startedwalking = false;
                    gravity = 100f;
                    if (startedwalking == false && sprint)
                    {
                        anim.Play("sprint", -1, 0.0f);

                    }

                }

                //if (Input.GetButtonUp("Jump") && moveDirection.y > 10)
                // {
                //   moveDirection.y = 10;
                //}
                if (!sprint)
                {
                    moveDirection.x = Input.GetAxis("Horizontal") * speed;
                    moveDirection.z = Input.GetAxis("Vertical") * speed;
                }
                else
                {
                    moveDirection.x = Input.GetAxis("Horizontal") * speed * 1.8f;
                    moveDirection.z = Input.GetAxis("Vertical") * speed * 1.8f;
                }
                if (airdashing == false)
                {
                    moveDirection.y -= gravity * Time.deltaTime;
                }
                else
                {
                    moveDirection.y = 0;
                    TimeSinceAirDashing = TimeSinceAirDashing + Time.deltaTime;
                    if (TimeSinceAirDashing > 0.5f)
                    {
                        airdashing = false;
                        TimeSinceAirDashing = 0;
                        //speed = speed / 2f;

                    }
                }
                //RaycastHit hit;
                // var ray = new Ray(transform.position, Vector3.down);
                //if(controller.Raycast(ray,  ,4f))
                //controller.Raycast(,,);
                //moveDirection.x = moveDirection.x % RotateCam.CameraRotation.y;
                //moveDirection.z = moveDirection.z + RotateCam.CameraRotation.y;

                Vector3 fwd = transform.TransformDirection(Vector3.down) * 1.3f;
                Debug.DrawRay(transform.position, fwd, Color.green);

                if (!Physics.Raycast(transform.position, fwd, 1.3f) && controller.isGrounded && collidingwith.collider.tag == "Slideable")
                {
                    slide = true;
                    anim.Play("slide", -1, -0f);
                    firstframeslide = true;
                }

                moveDirection = Quaternion.AngleAxis(Camera.main.transform.eulerAngles.y, Vector3.up) * moveDirection;



                if (new Vector3(moveDirection.x, 0, moveDirection.z).magnitude > 0)
                {
                    transform.rotation = Quaternion.LookRotation(new Vector3(moveDirection.x, 0, moveDirection.z));
                }
                //this.transform.rotation = new Quaternion(Input.GetAxis("Horizontal") * speed, 0, Input.GetAxis("Vertical"),0);
                anim.SetFloat("Haxis", axisH);
                anim.SetFloat("Vaxis", axisV);
                anim.SetBool("Sprint", sprint);
                if (axisH == 0 && axisV == 0)
                {
                    sprint = false;
                }

                if (!controller.isGrounded && Input.GetKeyDown(KeyCode.Joystick1Button2) && airdashing == false && canAirDash == true)
                {
                    anim.Play("Airdash2", -1, 0f);
                    airdashing = true;
                    sprint = false;
                    canAirDash = false;
                    //speed = speed * 2.6f;

                }
                if (!airdashing)
                    controller.Move(moveDirection * Time.deltaTime);
                else
                    controller.Move(moveDirection * 2.6f * Time.deltaTime);
            }
            if (dodge)
            {
                TimeSinceDodge = TimeSinceDodge + Time.deltaTime;
                if (TimeSinceDodge < 0.15f)
                    controller.Move(transform.forward * speed * 2.9f * Time.deltaTime);
                else
                    controller.Move(transform.forward * speed * 1 * Time.deltaTime);
                controller.Move(new Vector3(0, -1, 0) * speed * Time.deltaTime);
                if (TimeSinceDodge > 0.3f)
                {
                    dodge = false;

                    if (Input.GetKey(KeyCode.Joystick1Button2))
                        sprint = true;
                }
            }
            if (attack1)
            {
                timesinceattack1 = timesinceattack1 + Time.deltaTime;
                controller.Move(transform.forward * speed * 0.5f * Time.deltaTime);
                if (timesinceattack1 > 0.1f)
                {
                    //trail.GetComponent<Renderer>().enabled = true;
                }
                if (timesinceattack1 > 0.7f)
                {
                    attack1 = false;
                    //trail.GetComponent<Renderer>().enabled = false;
                }
            }
        }



    }
    void OnControllerColliderHit(ControllerColliderHit hit)
    {
        hitnormal = hit.normal;
        hitpoint = hit.point;
        collidingwith = hit;

    }
    private void LateUpdate()
    {

        if (slide == true)
        {
            sprint = false;
            if (firstframeslide == true)
            {
                //controller.Move(new Vector3(hitnormal.normalized.x, 200, hitnormal.normalized.z) * Time.deltaTime);
                // controller.Move(new Vector3(moveDirection.x, jumpSpeed / 2, moveDirection.y) * Time.deltaTime);
                firstframeslide = false;
            }
            else
            {
                var smthng = new Ray(hitnormal, hitpoint);
                Debug.DrawRay(hitpoint, hitnormal, Color.red);
                transform.rotation = Quaternion.LookRotation(new Vector3(hitnormal.x, 0, hitnormal.z));
                if (controller.isGrounded)
                {
                    if (Input.GetButtonDown("Jump"))
                    {
                        controller.Move(new Vector3(hitnormal.normalized.x, jumpSpeed / 2, hitnormal.normalized.z) * 10 * Time.deltaTime);
                        anim.Play("Jump1", -1, 0.0f);
                        slide = false;
                    }
                    else
                    {
                        controller.Move(new Vector3(hitnormal.normalized.x, -130, hitnormal.normalized.z) * 18 * Time.deltaTime);
                    }
                }
                else
                {
                    Vector3 help = transform.forward;
                    help.y -= gravity * Time.deltaTime;

                    controller.Move(help);
                    //controller.Move(new Vector3(hitnormal.normalized.x, -gravity, hitnormal.normalized.z) * Time.deltaTime);
                }

                //controller.velocity.y > 0.0000000001f || controller.velocity.x == 0 || controller.velocity.z == 0 || 
                if (new Vector3(0.0f, 1, 0.0f) == hitnormal.normalized || hitnormal == new Vector3(0.0f, 1, 0.0f) || controller.velocity.magnitude < 1f)
                {
                    slide = false;
                    anim.Play("actualIdle", -1, 0.0f);
                }
            }
            //if ((hitnormal.normalized.x > 0.01f || hitnormal.normalized.x < -0.01f) && (hitnormal.normalized.z > 0.01f || hitnormal.normalized.z < -0.01f))

        }

        //this.transform.rotation = Rotations;
    }
}
