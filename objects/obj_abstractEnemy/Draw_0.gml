// Efeito hitflash
draw_self();
if hitFlash = true{
gpu_set_fog(true, c_white, 0, 0);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_aqua, 1);
gpu_set_fog(false, c_white, 0, 0);
hitFlashTimer -= 1
}

if hitFlashTimer <= 0{
	hitFlash = false
}

#region Efeitos
effectAlarm -= 1
switch effect{
	case "None":
		image_blend = c_white
		break;
	
	case "Blind":
		speedModifier = 0.75
		draw_sprite_ext(spr_blindEffect,image_index,x,y,sprite_width/100,sprite_height/100,0,c_white,1)
		break;
	
	case "Slow":
		image_blend = c_gray
		speedModifier = 0.4
		draw_sprite_ext(spr_sleepEffect,image_index,x,y,sprite_width/100,sprite_height/100,0,c_white,1)
		if effectAlarm <= 0{
			// Reiniciando o pingelo
			effectAlarm = 90
		}
		break;
		
	case "Burn":
		image_blend = c_orange
		draw_sprite_ext(spr_LighterRun,image_index,x,y,sprite_width/100,sprite_height/100,0,c_white,1)
		if effectAlarm <= 0{
			// Dano da labareda
			var dmg = global.statDamage * 0.6
			hp -= dmg
			
			// Causando dano
			if !audio_is_playing(snd_fireBurst){
				audio_play_sound(snd_fireBurst,2,0,0.4)
			}
			instance_create_depth(x,y,depth,obj_damageFeedback,{text: dmg,color:image_blend})
			scr_particleExplosion(spr_smokePuff,4,8,0.08,0.06,c_dkgrey)
			
			// Reiniciando o pingelo
			effectAlarm = 90
		}
		break;
}

#endregion
