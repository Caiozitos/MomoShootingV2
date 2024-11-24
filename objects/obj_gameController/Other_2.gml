// Criando arquivos fundamentais caso eles não existam
if !file_exists("keybinds.ini"){
	// Criando variáveis
	var bindList_ = [ord("A"),ord("S"),ord("D"),ord("W")]			// Lista com as binds
	var arquivoBinds_ = file_text_open_write("keybinds.ini")		// Arquivo que guarda as binds
	
	// Iniciando o for
	for(var i = 0;i < array_length(bindList_); i += 1){						
		file_text_write_string(arquivoBinds_,array_get(bindList_,i))	// Escrevendo a bind no arquivo
		file_text_writeln(arquivoBinds_)									// Soltando uma linha
	}
	file_text_close(arquivoBinds_)
}

