 if global.money >= chosenItem.cost and itemBought = false and array_length(global.equippedGuns) < 2{
	global.money -= chosenItem.cost
	scr_freeze(30)
	scr_screenshake(20,5)
	scr_particleExplosion(spr_paperParticle,12,12,0.03,0.1,c_white)
	audio_play_sound(snd_chaChing,0,0,,,random_range(0.95,1.10))
	image_xscale = 2
	image_yscale = 2
	image_angle = random_range(-10,10)
	
	array_push(global.equippedGuns,chosenItem.name)
	itemBought = true
}

else{
	audio_play_sound(snd_menuBlocked,1,0)
	scr_screenshake(10,5)
}