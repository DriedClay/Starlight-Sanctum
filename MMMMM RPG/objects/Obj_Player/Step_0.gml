right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
down_key = keyboard_check(vk_down);
up_key = keyboard_check(vk_up);

xspeed = (right_key - left_key) * move_speed;
yspeed = (down_key - up_key) * move_speed;

//Set Sprite
mask_index = sprite[DOWN];
if yspeed = 0 {
	if xspeed > 0 {face = RIGHT};
	if xspeed < 0 {face = LEFT};
}
if xspeed > 0 && face = LEFT {face = RIGHT};
if xspeed < 0 && face = RIGHT {face = LEFT};
if xspeed = 0 {
	if yspeed > 0 {face = DOWN};
	if yspeed < 0 {face = UP};
}
if yspeed > 0 && face = UP {face = DOWN};
if yspeed < 0 && face = DOWN {face = UP};
sprite_index = sprite[face];

//collisions
if place_meeting(x + xspeed, y, Obj_wall) == true
	{
	xspeed = 0;
	}
if place_meeting(x, y + yspeed, Obj_wall) == true
	{
	yspeed = 0;
	}

x += xspeed;
y += yspeed;

//animate
if xspeed = 0 && yspeed = 0
{
	image_index = 0;
}