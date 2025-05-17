event_inherited()
	repeat(12){
			instance_create_depth(x+irandom_range(-50,50), y+irandom_range(-50,50),depth-100,obj_smoke,{sprite_index: spr_smokePuff, image_blend: c_yellow})
		}
scr_particleExplosion(spr_dotParticle,25,10,0.05,0.1,c_yellow)
audio_play_sound(snd_chaChing,1,0)