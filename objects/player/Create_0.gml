/// @description Insert description here
// You can write your code in this editor

playerGravity = MainGameObject.gravity;
xSpeed = 10;
ySpeed = 20;

airXDrag = 0.98;
airYDrag = 0.95;

collidingXDrag = 0.85;
collidingYDrag = 0.5;

velocityX = 0;
velocityY = 0;

lastFrameTime = current_time;

collidingX = false;
collidingY = false;