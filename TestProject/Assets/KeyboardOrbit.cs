using MeshMelter;
using UnityEngine;

public class KeyboardOrbit : MonoBehaviour
{
    public float Speed = 0.1f;
    public GameObject bunny;
    private Melter melt;

    public GameObject bunny2;
    public Renderer rend;


    void Start()
    {
        rend = bunny2.GetComponent<Renderer>();

        melt = (Melter)bunny.GetComponent(typeof(Melter));
    }
    void Update()
    {
        float xAxisValue = Input.GetAxis("Horizontal") * Speed;
        float zAxisValue = Input.GetAxis("Vertical") * Speed;

        transform.position = new Vector3(transform.position.x + xAxisValue, transform.position.y, transform.position.z + zAxisValue);

        melt.setMeltinglvl(transform.position.z + 12);
        if ((transform.position.z + 12) >= 0){
            rend.material.SetFloat("_dissolve_amount", (transform.position.z + 12));
        }  
    }
}