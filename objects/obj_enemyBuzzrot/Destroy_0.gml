event_inherited();
instance_create_depth(x,y,depth,obj_smoke,{
	sprite_index: spr_bloodExplosion
})
audio_stop_sound(snd_enemyExplosion)
audio_play_sound(snd_enemyExplosion,1,0)
