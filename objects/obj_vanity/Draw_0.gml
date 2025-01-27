if obj_momo.sprite_index = spr_momoIdle{
for(var i = 0;i < array_length(global.vanityIdle);i += 1){
	draw_sprite_ext(global.vanityIdle[i],obj_momo.image_index,x,y,obj_momo.image_xscale,obj_momo.image_yscale,0,obj_momo.image_blend,obj_momo.image_alpha)
}
}
else{
	for(var i = 0;i < array_length(global.vanityRun);i += 1){
	draw_sprite_ext(global.vanityRun[i],obj_momo.image_index,x,y,obj_momo.image_xscale,obj_momo.image_yscale,0,obj_momo.image_blend,obj_momo.image_alpha)
	}
}
