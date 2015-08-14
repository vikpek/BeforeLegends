using UnityEngine;
using System.Collections;

[System.Serializable]
public class Vec2int{
    public int x;
    public int y;
    public Vec2int(int iX, int iY)
    {
        x = iX;
        y = iY;
    }

    public string ToString()
    {
	    return x + " | " + y;
    }

    public int ManhattenDistance(Vec2int destination)
    {
        return (Mathf.Abs(x - destination.x) + Mathf.Abs(y - destination.y));
    }

}

public class MapObjectData
{
	public Vec2int pos = new Vec2int(0, 0);
	public int appearanceID;

	public UnitData battleStats = new UnitData();
}

