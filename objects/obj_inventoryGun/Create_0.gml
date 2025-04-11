var arquivoItens = file_text_open_read(working_directory + "itemsGlobal.ini");
empty = true

if array_length(global.listaArmas) == 0 or array_length(global.equippedGuns) = 1{
    while !file_text_eof(arquivoItens) {
        var item = file_text_read_string(arquivoItens);
        file_text_readln(arquivoItens);

        if string_length(item) > 0 { 
            var jsonItem = json_parse(item);
			if array_length(global.equippedGuns) == 1 and gunIndex = 1{
				break;
			}
            if jsonItem.name == global.equippedGuns[gunIndex] {
                chosenItem = jsonItem;
                empty = false
                break; 
            }
        }
    }
}


file_text_close(arquivoItens); 

mouseOver = false;

show_debug_message(empty);
