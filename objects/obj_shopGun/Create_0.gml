// Pegando todos os itens
var arquivoItens = file_text_open_read(working_directory + "itemsGlobal.ini");

if array_length(global.listaArmas) == 0 {
    while !file_text_eof(arquivoItens) {
        var item = file_text_read_string(arquivoItens);
        file_text_readln(arquivoItens);

        if string_length(item) > 0 { 
            var jsonItem = json_parse(item);
            var gunEquiped = false;

            // Verifica se a arma já está equipada
            if array_length(global.equippedGuns) > 0 {
                for (var n = 0; n < array_length(global.equippedGuns); n += 1) {
                    if jsonItem.name == global.equippedGuns[n] {
                        gunEquiped = true;
                        break; 
                    }
                }
            }

            // Adiciona à lista se for uma arma e não estiver equipada
            if (is_struct(jsonItem) && jsonItem.itemType == "Gun" && !gunEquiped) {
                array_push(global.listaArmas, item); 
            }
        }
    }
}

file_text_close(arquivoItens);

// Escolhendo um item
if array_length(global.listaArmas) > 0 {
    randomize();
    array_shuffle_ext(global.listaArmas);

    var stringItem = array_first(global.listaArmas);
    chosenItem = json_parse(stringItem); 
    array_delete(global.listaArmas, 0, 1);
}

mouseOver = false;
itemBought = false;
