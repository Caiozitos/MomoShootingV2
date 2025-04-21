if x > room_width * 2 or x < -room_width or y > room_height * 2 or y < -room_height{
	instance_destroy()
}
if critical = true{
instance_create_depth(x,y,depth+10,obj_smoke,{
	sprite_index: spr_shine,
	image_blend: c_orange,
	image_index: irandom_range(0,2),
	image_angle: irandom_range(0,360)
})
}

image_angle = direction