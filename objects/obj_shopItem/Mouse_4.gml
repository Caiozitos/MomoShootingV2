 if global.money >= chosenItem.cost and itemBought = false{
	global.money -= chosenItem.cost
	array_push(global.playerItems, chosenItem)
	scr_freeze(30)
	scr_screenshake(20,5)
	event_inherited()
	scr_particleExplosion(spr_paperParticle,12,12,0.03,0.1,c_white)
	audio_play_sound(snd_chaChing,0,0,,,random_range(0.95,1.10))
	image_xscale = 2
	image_yscale = 2
	image_angle = random_range(-10,10)
	
	switch chosenItem.name{
		case "Apple":
			global.statMaxHp += 3
			global.statHp += 2
			break;
			
		case "Coffee":
			global.statShotRate += 0.20
			global.statSpeed += 3
			break;
			
		case "Light Bulb":
			var xx = irandom_range(96,1280)
			var yy = irandom_range(96,672)
			instance_create_depth(xx,yy,obj_momo.depth,obj_trapBulb)
			
		
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

else{
	audio_play_sound(snd_menuBlocked,1,0)
	scr_screenshake(10,5)
}

