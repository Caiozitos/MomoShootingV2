// Perda de vida
hp -= other.damage

// Efeito de hitflash
hitFlash = true
hitFlashTimer = 5
scr_freeze(8)

// Destruindo a bala
instance_destroy(other)

// Criando o som
audio_stop_sound(hitSound)

// Efeito da bala
scr_particleExplosion(bloodParticle,12,15,0.05,0.1,bloodColor)

// Efeito da bala atingindo
audio_stop_sound(snd_bulletHit)
audio_play_sound(snd_bulletHit,1,0)
audio_play_sound(hitSound,1,0)

// Feedback de dano
if other.critical = true{
	var col = c_orange
	var crit = true
}else{
	var col = c_white
	var crit = false
}
instance_create_layer(x,y,"lay_damageFeedback",obj_damageFeedback,{dad: id, text:round(other.damage), color: col, critical: crit})