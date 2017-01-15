deltaTime = (current_time - lastFrameTime)/1000; //in seconds
lastFrameTime = current_time;

if(collidingX || collidingY)
{
	velocityX *= collidingXDrag;
	velocityY *= collidingYDrag;
}
else
{
	velocityX *= airXDrag;
	velocityY *= airYDrag;
}

if(keyboard_check(ord("W")) || keyboard_check(vk_up))
{
	velocityY -= ySpeed;
}
if(keyboard_check(ord("S")) || keyboard_check(vk_down))
{
	velocityY += ySpeed;
}
if(keyboard_check(ord("D")) || keyboard_check(vk_right))
{
	velocityX += xSpeed;
}
if(keyboard_check(ord("A")) || keyboard_check(vk_left))
{
	velocityX -= xSpeed;
}

velocityY += playerGravity;

velocityXToIntegrate = velocityX * deltaTime;
velocityYToIntegrate = velocityY*  deltaTime;

for(i = 0; i < 10; i++)
{
	xSpeedToIntegrate = velocityXToIntegrate/(power(2,i));
	if(CollisionCheck(xSpeedToIntegrate,0) == 1)
	{
		x += xSpeedToIntegrate;
		collidingX = false;
	}
	else
	{
		collidingX = true;
	}
}

for(i = 0; i < 10; i++)
{
	ySpeedToIntegrate = velocityYToIntegrate/(power(2,i));
	if(CollisionCheck(0,ySpeedToIntegrate) == 1)
	{
		y += ySpeedToIntegrate;
		collidingY = false;
	}
	else
	{
		collidingY = true;
	}
}

if(collidingX || collidingY)
	show_debug_message("Colliding");
else
	show_debug_message("Not Colliding");
	
	