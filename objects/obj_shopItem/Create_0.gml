var arquivoItens = file_text_open_read(working_directory + "itemsGlobal.ini");

if array_length(global.listaItens) == 0 {
    while !file_text_eof(arquivoItens) {
        var item = file_text_read_string(arquivoItens);
        file_text_readln(arquivoItens);

        if string_length(item) > 0 {
            var jsonItem = json_parse(item);
            
            if (is_struct(jsonItem) && jsonItem.itemType != "Gun") {
                array_push(global.listaItens, item);
            }
        }
    }
}

file_text_close(arquivoItens);

if array_length(global.listaItens) > 0 {
    randomize();
    array_shuffle_ext(global.listaItens);

    var stringItem = array_first(global.listaItens);
    chosenItem = json_parse(stringItem);
    array_delete(global.listaItens, 0, 1);
} else {
    show_debug_message("Erro: global.listaItens está vazio!");
}

mouseOver = false;
itemBought = false;
