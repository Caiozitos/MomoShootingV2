if x > room_width or x < 0 or y > room_height or y < 0{
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