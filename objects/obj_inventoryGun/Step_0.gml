if mouseOver = true{
	var sizeLerp = 1.2
}
else{
	var sizeLerp = 1
}

image_xscale = lerp(image_xscale,sizeLerp,0.2)
image_yscale = lerp(image_yscale,sizeLerp,0.2)
image_angle = lerp(image_angle,1,0.2)

var arquivoItens = file_text_open_read(working_directory + "itemsGlobal.ini");
 while !file_text_eof(arquivoItens) {
 var item = file_text_read_string(arquivoItens);
        file_text_readln(arquivoItens);

        if string_length(item) > 0 { 
            var jsonItem = json_parse(item);
			if array_length(global.equippedGuns) == 1 and gunIndex = 1{
				empty = true
				break;
			}

            if jsonItem.name == global.equippedGuns[gunIndex] {
                chosenItem = jsonItem;
                empty = false
                break
			}
		}
 }
file_text_close(arquivoItens); 