instance_create_depth(x,y,depth-200,obj_smoke,{sprite_index: spr_shine, image_angle: image_angle})
global.money += 1
audio_stop_sound(snd_coinCollect)
audio_play_sound(snd_coinCollect,1,0,,,1+global.coinPitch)
global.coinPitch += 0.02
obj_enemyGenerator.alarm[2] = 30
instance_destroy()