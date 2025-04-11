if image_index = 1{
	scr_particleExplosion(spr_glassParticle,8,9,0.02,0.06,c_white)
	scr_freeze(50)
	audio_play_sound(snd_bulbExplosion,0,0)
	instance_create_depth(x,y,depth-1,obj_smoke,{sprite_index: spr_smokePuff, image_blend: make_color_rgb(251,255,255)})
	image_index = 0
	
	with obj_abstractEnemy{
		if point_distance(x,y,other.x,other.y) < 150{
			effect = "Blind"
			alarm[1] = 60 * 3
		}
	}
	
	instance_destroy(other)
}
