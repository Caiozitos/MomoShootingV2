scr_particleExplosion(spr_particleHeart,14,10,0.05,0.05,c_red)
audio_play_sound(snd_complete,0,0,,,0.8)
global.statHp += global.foodHpRecover
instance_destroy()