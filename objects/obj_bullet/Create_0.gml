image_angle = direction
critical = true
if critical = true{
	damage *= 2
	audio_stop_sound(snd_enemyExplosion)
	audio_stop_sound(snd_pistolShot)
	audio_play_sound(snd_enemyExplosion,0,0,,,0.5)
	audio_play_sound(snd_pistolShot,0,0,,,0.5)
}
alarm[0] = 1
