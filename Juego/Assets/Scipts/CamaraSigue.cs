using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CamaraSigue : MonoBehaviour {

	public Transform objetivo;
	public float suavizado = 5f;
	Vector3 desface;

	// Use this for initialization
	void Start () {
		 desface = transform.position - objetivo.position;

	}
	/// This function is called every fixed framerate frame, if the MonoBehaviour is enabled.
	void FixedUpdate ()	{
			Vector3 posicionObjetivo = objetivo.position + desface;
			transform.position = Vector3.Lerp(transform.position, posicionObjetivo, suavizado*Time.deltaTime);
	}

}
