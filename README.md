# GameMakerPeriod2
if(!place_meeting(x,y+1,oWall)) //checks if youre in the air or not
	{
	sprite_index = sPlayerFalling;
	image_speed = 0;
	if (sign(vspd) > 0) image_index = 1; else image_index = 0;
	
	}
	else 

	{
		image_speed = 1
		if (hspd == 0) 
	{
		sprite_index = sPlayerIdle;
	}
	else 
	{
		sprite_index = sPlayerWalk;
	}
	if key_crouch { 
	
	sprite_index = sPlayerCrouch;

}

}
	if (hspd != 0) image_xscale = sign(hspd);

