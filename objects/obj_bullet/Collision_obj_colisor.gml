if bouncy = true{
	bounces += 1
	damage *= 1.20
	audio_play_sound(snd_uziShot,1,0,0.3,,2.5)
	scr_particleExplosion(spr_sparkParticle,20,10,0.06,0.2,c_white)
	move_bounce_solid(true)
	
		if bounces >= 2{
		instance_destroy()
	}

}else{
	instance_destroy()
}

