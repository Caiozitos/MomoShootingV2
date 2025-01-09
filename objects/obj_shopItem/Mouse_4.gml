if global.money >= chosenItem.cost and itemBought = false{
	global.money -= chosenItem.cost
	array_push(global.playerItems, chosenItem)
	scr_screenshake(20,5)
	scr_particleExplosion(spr_paperParticle,12,12,0.03,0.1,c_white)
	audio_play_sound(snd_chaChing,0,0,,,random_range(0.95,1.10))
	image_xscale = 2
	image_yscale = 2
	image_angle = random_range(-10,10)
	itemBought = true
}