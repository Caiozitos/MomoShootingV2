if sprite_index = spr_deodorantCloud{
	other.effect = "Slow"
	other.alarm[1] = 90
}

if sprite_index = spr_flame{
	if other.effect = "None"{
		image_xscale = irandom_range(1.5,2)
		image_yscale = irandom_range(1.5,2)
		image_angle = irandom_range(-20,20)
		audio_stop_sound(snd_fireBurst)
		audio_play_sound(snd_fireBurst,1,0)
		other.alarm[1] = 90
		other.effect = "Burn"
	}
}