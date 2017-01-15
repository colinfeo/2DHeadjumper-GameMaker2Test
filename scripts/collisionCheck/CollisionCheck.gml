xOffset = argument0;
yOffset = argument1;

returnValue = 1;

tempX = x + xOffset;
tempY = y + yOffset;
//Tilemap 0 = no collision, 1 = collision tile

collisionLeft = tilemap_get_at_pixel(MainGameObject.collisiontiles,tempX,tempY+sprite_height/2);
collisionBottom = tilemap_get_at_pixel(MainGameObject.collisiontiles,tempX+sprite_width/2,tempY+sprite_height);
collisionRight = tilemap_get_at_pixel(MainGameObject.collisiontiles,tempX+sprite_width,tempY+sprite_height/2);
collisionTop = tilemap_get_at_pixel(MainGameObject.collisiontiles,tempX+sprite_width/2,tempY);

collisionTopLeft = tilemap_get_at_pixel(MainGameObject.collisiontiles,tempX,tempY);
collisionTopRight = tilemap_get_at_pixel(MainGameObject.collisiontiles,tempX+sprite_width,tempY);
collisionBottomLeft = tilemap_get_at_pixel(MainGameObject.collisiontiles,tempX,tempY+sprite_height);
collisionBottomRight = tilemap_get_at_pixel(MainGameObject.collisiontiles,tempX+sprite_width,tempY+sprite_height);

if(collisionLeft == 1 || collisionTopLeft == 1 || collisionBottomLeft == 1)
{
	returnValue *= 2;
}

if(collisionBottom == 1 || collisionBottomRight == 1 || collisionBottomLeft == 1)
{
	returnValue *= 5;
}

if(collisionRight == 1 || collisionBottomRight == 1 || collisionTopRight == 1)
{
	returnValue *= 3;
}

if(collisionTop == 1 || collisionTopLeft == 1 || collisionTopRight == 1)
{
	returnValue *= 7;
}

return returnValue;