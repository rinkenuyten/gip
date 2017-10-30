using UnityEngine;
using System.Collections;

public class Ageing : MonoBehaviour {

	int blendShapeCount;
	SkinnedMeshRenderer skinnedMeshRenderer;
	Mesh skinnedMesh;
	Renderer rend;
	public float age = 0f;

	
	void Awake ()
	{
		skinnedMeshRenderer = GetComponent<SkinnedMeshRenderer> ();
		skinnedMesh = GetComponent<SkinnedMeshRenderer> ().sharedMesh;

		rend = GetComponent<Renderer>();
		//rend.material.shader = Shader.Find("Specular");
	}

	
	void Update ()
	{
		if (age > 100)
			age = 100;
		if (age < 0)
			age = 0;
		skinnedMeshRenderer.SetBlendShapeWeight (0, age);
		rend.material.SetFloat("_Age", age/100);
	}
}
