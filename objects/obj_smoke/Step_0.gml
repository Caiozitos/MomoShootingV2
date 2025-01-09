if sprite_index = spr_smokePuff{
	image_angle += 5
	image_xscale -= 0.01
	image_yscale -= 0.01
	image_alpha -= 0.03
	if image_alpha <= 0{
		instance_destroy()
	}
}

if particle = true{
	image_alpha -= fadeSpeed
	speed = lerp(speed,0,speedLerp)
}