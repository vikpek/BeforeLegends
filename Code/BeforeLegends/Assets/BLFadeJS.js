#pragma strict

var time : float = 0;
var maxTime : float;
var sprite : SpriteRenderer;
var fadeOut : boolean = false;

function Update()
{
    sprite.color.a = Mathf.Lerp((fadeOut ? 1 : 0), (fadeOut ? 0 : 1), time / maxTime);
    if (time >= maxTime)
    {
        if (!fadeOut)
        {
            time = 0;
            fadeOut = true;
        }
        else
        {
            Application.LoadLevel("Menu");
        }
    }
    time += Time.deltaTime;
}