/// @description Smoke puff
if sprite_index = spr_momoRun{
	instance_create_depth(x,y,depth+10,obj_smoke,{
		sprite_index: spr_smokePuff,
		image_index: irandom_range(0,2),
		image_angle: irandom_range(0,360)
	})
}

alarm[0] = 5