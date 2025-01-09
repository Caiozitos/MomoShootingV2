var enemies = false
with all{
	if object_get_parent(object_index) = obj_abstractEnemy{
		var enemies = true
	}
}

if global.waveInterval = true and enemies = false{
	sprite_index = spr_neneJump
}

if image_index >= 3 and image_index < 4 and sprite_index = spr_neneJump and !audio_is_playing(snd_jump) and !instance_exists(obj_neneShop){
	audio_play_sound(snd_jump,0,0)
}
