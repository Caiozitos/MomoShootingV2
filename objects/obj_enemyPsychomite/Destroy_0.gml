event_inherited();
instance_create_depth(x,y,depth,obj_smoke,{
	sprite_index: spr_bloodExplosion,
	image_xscale: 0.7,
	image_yscale: 0.7,
})
audio_stop_sound(snd_enemyExplosion)
audio_play_sound(snd_enemyExplosion,1,0)
