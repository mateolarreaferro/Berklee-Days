using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WordProcessorInstrument : MonoBehaviour
{
    CsoundUnity csound;
    AudioSource _souce;
    [SerializeField] AudioClip[] _clipsForWords;

    public bool Play;



    private void Start()
    {
        csound = GetComponent<CsoundUnity>();
        _souce = GetComponent<AudioSource>();
    }


    // Update is called once per frame
    void Update()
    {
        if (Play)
        {
            _souce.clip = _clipsForWords[0];
            _souce.Play();
            Play = false;
            
        }


        //csound.SetChannel("blurTime", normalizedY * 3);
        //csound.SetChannel("blurRate", normalizedX * 3);
        //csound.SetChannel("speed", normalizedX + 0.2f);
        //csound.SetChannel("mix", 0);
    }


    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("hopes"))
        {


        }
        else if (other.gameObject.CompareTag("I"))
        {


        }
        else if (other.gameObject.CompareTag("dream"))
        {


        }
        else if (other.gameObject.CompareTag("real"))
        {


        }
        else if (other.gameObject.CompareTag("cars"))
        {


        }
        else if (other.gameObject.CompareTag("roads"))
        {


        }
        else if (other.gameObject.CompareTag("vacation"))
        {


        }
        else if (other.gameObject.CompareTag("strange"))
        {


        }
    }
}
