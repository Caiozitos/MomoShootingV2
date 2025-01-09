// Perda de vida
hp -= other.damage

// Efeito de hitflash
hitFlash = true
hitFlashTimer = 5

// Destruindo a bala
instance_destroy(other)

// Criando o som
audio_stop_sound(hitSound)

// Efeito da bala
scr_particleExplosion(bloodParticle,12,15,0.09,0.1,bloodColor)

// Efeito da bala atingindo
audio_stop_sound(snd_bulletHit)
audio_play_sound(snd_bulletHit,1,0)
audio_play_sound(hitSound,1,0)

// Feedback de dano
instance_create_layer(x,y,"lay_damageFeedback",obj_damageFeedback,{dad: id, text:round(other.damage)})