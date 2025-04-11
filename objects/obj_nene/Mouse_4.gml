if global.waveInterval and point_distance(obj_momo.x,obj_momo.y,x,y) < 150 and !instance_exists(obj_neneShop) and sprite_index = spr_neneJump{
	audio_play_sound(snd_menuConfirm,0,0)
	instance_create_depth(0,0,-9999,obj_neneShop)
}