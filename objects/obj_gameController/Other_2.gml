#region Keybinds
// Criando arquivo binds
if !file_exists(working_directory + "keybinds.ini"){
	// Criando variáveis
	var bindList_ = [ord("A"),ord("S"),ord("D"),ord("W"),vk_tab]			// Lista com as binds
	var arquivoBinds_ = file_text_open_write(working_directory + "keybinds.ini")		// Arquivo que guarda as binds
	
	// Carregando a bind list
	for(var i = 0;i < array_length(bindList_); i += 1){						
		file_text_write_real(arquivoBinds_,array_get(bindList_,i))	// Escrevendo a bind no arquivo
		file_text_writeln(arquivoBinds_)									// Soltando uma linha
	}
	file_text_close(arquivoBinds_)
}

#endregion
#region Itens
// Criando arquivo itens 
if !file_exists(working_directory + "itemsGlobal.ini") {
	#region Lista de itens
		var globalItemList = [
			"{ \"itemId\": 1, \"name\": \"Apple\", \"itemType\": \"Item\", \"cost\": 25, \"desc\": \"The shinier, the better... or so they say. Just don't think too hard about the wax they use to make it shine.\", \"descEffect\": \"+3 Max Health\\n+2 Health (Heal)\", \"synergy\": [] }",
			"{ \"itemId\": 2, \"name\": \"Coffee\", \"itemType\": \"Item\", \"cost\": 30, \"desc\": \"Gets me hyped! Though it's probably the sugar overload more than the caffeine kick.\", \"descEffect\": \"+20% Shooting Speed\\n+15% Movement Speed\", \"synergy\": [] }",
			"{ \"itemId\": 3, \"name\": \"Light Bulb\", \"itemType\": \"Item\", \"cost\": 20, \"desc\": \"Staring at it is bad enough. Don’t even try to guess what it’ll do to your eyes when it explodes.\", \"descEffect\": \"Shooting or touching the Light Bulb causes it to explode, blinding all nearby enemies for 5 seconds.\", \"synergy\": [] }",
			"{ \"itemId\": 4, \"name\": \"Deodorant\", \"itemType\": \"Item\", \"cost\": 25, \"desc\": \"They say it scares off bugs, but it rarely works. Maybe alien bugs will react differently?\", \"descEffect\": \"Has a 15% chance to shoot a piercing cloud that paralyzes enemies as it passes through them.\", \"synergy\": [\"Lighter\"] }",
			"{ \"itemId\": 5, \"name\": \"Lighter\", \"itemType\": \"Item\", \"cost\": 30, \"desc\": \"Not really effective due to its short range. But what if I had something flammable?\", \"descEffect\": \"Enemies that touch you will be burned. You're still taking damage from them, though.\", \"synergy\": [\"Deodorant\"] }",
			"{ \"itemId\": 6, \"name\": \"Bangbang\", \"class\": \"Pistol\", \"itemType\": \"Gun\", \"cost\": 50, \"desc\": \"I've been using this fella for years now. It was my first pistol—not bad, but there are definitely better ones.\", \"descEffect\": \"Shoots normal bullets with high precision and solid damage. Pretty fast fire rate.\", \"synergy\": [] }",
			"{ \"itemId\": 7, \"name\": \"Steelhowl\", \"class\": \"Shotgun\", \"itemType\": \"Gun\", \"cost\": 65, \"desc\": \"My grandpa used to say the four barrels firing together sounded like a howl. He had... interesting ears for an 80-year-old.\", \"descEffect\": \"Shoots four bullets at a medium pace.\\nEach bullet deals low damage, but they pack a punch if all of them hit.\", \"synergy\": [] }",
			"{ \"itemId\": 8, \"name\": \"Blindrage\", \"class\": \"Machine gun\", \"itemType\": \"Gun\", \"cost\": 60, \"desc\": \"This thing is tough to control. Holding it with both hands might help, but my hands are too big to grip it properly.\", \"descEffect\": \"Semi-automatic gun with low damage but really fast fire rate.\\nBetter have good aim, though.\", \"synergy\": [] }",
			"{ \"itemId\": 9, \"name\": \"BCK-2U\", \"class\": \"Pistol\", \"itemType\": \"Gun\", \"cost\": 75, \"desc\": \"I don’t really get how this thing even works. Is this what they call a stray bullet?\", \"descEffect\": \"Bullets ricochet once after hitting a wall.\\nRicocheting increases damage by 20%.\", \"synergy\": [] }",
			"{ \"itemId\": 10, \"name\": \"Hexcrash\", \"class\": \"Pistol\", \"itemType\": \"Gun\", \"cost\": 75, \"desc\": \"Someone once said six bullets are enough to show off the West’s fastest trigger. I live in the South, though.\", \"descEffect\": \"Fires slowly. Each shot increases damage by 5%,\\nresetting at 30%. The sixth shot is always a critical hit.\", \"synergy\": [] }"
		];


	#endregion

	// Criando o arquivo
	var arquivoItems_ = file_text_open_write(working_directory + "itemsGlobal.ini");
	for (var i = 0; i < array_length(globalItemList); i += 1) {
	    file_text_write_string(arquivoItems_, globalItemList[i]);
	    file_text_writeln(arquivoItems_); // Adiciona uma quebra de linha para cada item
	}

	file_text_close(arquivoItems_);
}
#endregion

// Iniciando audio groups
audio_group_load(grpMain)
audio_group_load(grpPlayerHit)
audio_group_load(grp_soundtrack)