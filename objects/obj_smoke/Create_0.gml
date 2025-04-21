if sprite_index = spr_smokePuff and image_blend = c_white{
	x = obj_momo.x + 5 * obj_momo.image_xscale
	y = obj_momo.y + 23
}

if particle = true{
	direction = irandom_range(0,360)
	image_angle = irandom_range(0,360)
	image_index = random_range(0,2)
	speed = random_range(partSpeed*0.6,partSpeed*1.2)
}