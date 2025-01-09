#region Keybinds
// Criando arquivo binds
if !file_exists("keybinds.ini"){
	// Criando variáveis
	var bindList_ = [ord("A"),ord("S"),ord("D"),ord("W"),vk_tab]			// Lista com as binds
	var arquivoBinds_ = file_text_open_write("keybinds.ini")		// Arquivo que guarda as binds
	
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
if !file_exists("itemsGlobal.ini"){
	#region Lista de itens
		var globalItemList = [
	    {"itemId": 1, "name": "Apple", "itemType": "Item", "cost": 25, "desc": "The shinier, the better... or so they say. Just don't think too hard about the wax they use to make it shine.", "descEffect": "+3 Max Health\n+2 Health (Heal)"},
	    {"itemId": 2, "name": "Coffee", "itemType": "Item", "cost": 30, "desc": "Gets me hyped! Though it’s probably the sugar overload rather than the caffeine kick.", "descEffect": "+20% Shooting Speed\n+15% Movement Speed"},
	    {"itemId": 3, "name": "Light Bulb", "itemType": "Item", "cost": 20, "desc": "Staring at it is bad enough. Dont try to guess what it can do to your eyes when it explodes.", "descEffect": "Shooting or touching the Light Bulb causes it to explode, blinding all enemies nearby for 5 seconds."},
	    {"itemId": 4, "name": "Deodorant", "itemType": "Item", "cost": 25, "desc": "They say it scares off bugs, but it rarely works. Maybe alien bugs will react differently?", "descEffect": "Has a 15% chance to shoot a piercing cloud that paralyzes enemies as it passes through them."},
	    {"itemId": 5, "name": "Lighter", "itemType": "Item", "cost": 30, "desc": "Not really effective due to its low range. What if i had something flammable?", "descEffect": "Enemies that touch you will get burn. You're still taking damage from them, thought."}
	];
	#endregion

	// Criando o arquivo
	var arquivoItems_ = file_text_open_write("itemsGlobal.ini");
	for (var i = 0; i < array_length(globalItemList); i += 1) {
	    file_text_write_string(arquivoItems_, globalItemList[i]);
	    file_text_writeln(arquivoItems_); // Adiciona uma quebra de linha para cada item
	}

	file_text_close(arquivoItems_);
}


// Iniciando audio groups
audio_group_load(grpMain)
audio_group_load(grpPlayerHit)