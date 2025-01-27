if global.money >= chosenItem.cost and itemBought = false{
	global.money -= chosenItem.cost
	array_push(global.playerItems, chosenItem)
	scr_freeze(30)
	scr_screenshake(20,5)
	scr_particleExplosion(spr_paperParticle,12,12,0.03,0.1,c_white)
	audio_play_sound(snd_chaChing,0,0,,,random_range(0.95,1.10))
	image_xscale = 2
	image_yscale = 2
	image_angle = random_range(-10,10)
	
	array_push(global.playerItems,chosenItem)
	switch chosenItem.name{
		case "Apple":
			global.statMaxHp += 3
			global.statHp += 2
			
		case "Coffee":
		
	}
	// Definindo os nomes dos sprites
	var itemSpriteIdle = string("spr_" + chosenItem.name + "Idle")
	var itemSpriteRun = string("spr_" + chosenItem.name + "Run")
	
	// Limpando espaços vazios
	
	itemSpriteIdle = string_replace(itemSpriteIdle," ","_")
	itemSpriteRun = string_replace(itemSpriteRun," ","_")
	
	array_push(global.vanityIdle,asset_get_index(itemSpriteIdle))
	array_push(global.vanityRun,asset_get_index(itemSpriteRun))
	itemBought = true
}

