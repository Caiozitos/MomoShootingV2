if empty = false and array_length(global.equippedGuns) = 2{
		scr_freeze(30)
		scr_screenshake(20,5)
		event_inherited()
		scr_particleExplosion(spr_paperParticle,12,12,0.03,0.1,c_white)
		audio_play_sound(snd_chaChing,0,0,,,random_range(0.95,1.10))
		image_xscale = 2
		image_yscale = 2
		image_angle = random_range(-10,10)
		if gunIndex = 0{
			global.currentGun = global.equippedGuns[1]
		}
		else{
			global.currentGun = global.equippedGuns[0]
		}
		global.money += chosenItem.cost * 0.75
		var gunName = chosenItem.name 
		var index = array_get_index(global.equippedGuns,gunName)
		array_delete(global.equippedGuns,index,1)
		empty = true
}
else{
	audio_play_sound(snd_menuBlocked,1,0)
	scr_screenshake(10,5)
}