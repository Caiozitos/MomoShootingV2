function scr_dealDamage(){
	if obj_momo.invencible != true{
		// Causando dano
		global.statHp -= contactDamage
		
		// Ativando a invencibilidade
		obj_momo.alarm[3] = 30
		obj_momo.alarm[1] = obj_momo.hitflashSwitchTime
		obj_momo.invencible = true
		
		// Ativando o efeito de dano + som
		obj_damageIndicator.image_alpha = 1
		audio_group_set_gain(grpMain,0.1,0)
		audio_play_sound(snd_playerHit,2,0)
		audio_play_sound(snd_hitBuzz,1,0)
		audio_group_set_gain(grpMain,1,3000)
	}
}