

// player input
key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

var move = key_right - key_left;

//calc movement
hspd = move * walkspd;
vspd = vspd + grv;

if (place_meeting(x,y+1,obj_wall)) && (key_jump)
{
	vspd = -13
}

// horizontal collision
if (place_meeting(x+hspd,y,obj_wall))
{
	while (!place_meeting(x+sign(hspd),y,obj_wall))
	{
		x = x + sign(hspd);
	}
	hspd = 0;
}
x=x + hspd;

// vertical collision
if (place_meeting(x,y+vspd,obj_wall))
{
	while (!place_meeting(x,y+sign(vspd),obj_wall))
	{
		y = y + sign(vspd);
	}
vspd = 0;
}
y=y + vspd;

//animation
	
if(!place_meeting(x,y+1,obj_wall)) //checks if youre in the air or not
	{
	sprite_index = spr_char_airborne_right;
	image_speed = 0;
	if (sign(vspd) > 0) image_index = 1; else image_index = 0;
	
	if (hspd =0)
	{
	sprite_index = spr_char_airborne;
	if (sign(hspd)=0) and (sign(vspd) > 0) image_index = 1; else image_index = 0;
	}
	
	}
	else 

	{
		image_speed = 1
		if (hspd == 0) 
	{
		sprite_index = spr_char;
	}
	else 
	{
		sprite_index = spr_char_right_running;
	}
}
	if (hspd != 0) image_xscale = sign(hspd);
	
	
	