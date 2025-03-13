function scr_dealDamage(){
	if obj_momo.invencible != true{
		// Causando dano
		global.statHp -= contactDamage
		
		// Ativando a invencibilidade
		obj_momo.alarm[3] = 30
		obj_momo.alarm[1] = obj_momo.hitflashSwitchTime
		obj_momo.invencible = true
		
		// Ativando o efeito de dano + som
		scr_freeze(60)
		scr_screenshake(30,10)
		obj_damageIndicator.image_alpha = 1
		audio_group_set_gain(grpMain,0.1,0)
		audio_play_sound(snd_playerHit,2,0)
		audio_play_sound(snd_hitBuzz,1,0)
		audio_group_set_gain(grpMain,1,3000)
		
	}
	// Efeitos de itens
		if scr_searchItem("Lighter"){
			if !audio_is_playing(snd_fireBurst){
				scr_particleExplosion(spr_fireParticle,15,8,0.03,0.1,c_white)
				audio_play_sound(snd_lighter,10,0)
			}
			effect = "Burn"
		}
}