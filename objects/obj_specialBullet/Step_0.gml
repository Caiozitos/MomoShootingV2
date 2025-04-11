if sprite_index = spr_deodorantCloud{
	speed = 15
	image_angle += 5
	depth = -9999
}

if sprite_index = spr_flame{
	depth = -y
	image_alpha = 0.8
	if speed > 0{
		speed -= 0.1
		alarm[0] = 70
	}
	else if alarm[0] <= 0{
		scr_particleExplosion(spr_smokePuff,10,6,0.02,0.04,c_dkgrey)
		instance_destroy()
	}
	image_angle = lerp(image_angle,0,0.3)
	image_xscale = lerp(image_xscale,1,0.5)
	image_yscale = lerp(image_yscale,1,0.5)
}

if x > room_width or x < 0 or y > room_height or y < 0{
	instance_destroy()
}
