// Pegando todos os itens
var arquivoItens = file_text_open_read(working_directory + "itemsGlobal.ini")
if array_length(global.listaItens) = 0 {
while !file_text_eof(arquivoItens){
	var item = file_text_read_string(arquivoItens)
	array_push(global.listaItens,item)
	file_text_readln(arquivoItens)
}
}

// Escolhendo um item
randomize()
array_shuffle_ext(global.listaItens)
var stringItem = array_first(global.listaItens)
chosenItem = json_parse(stringItem)
array_delete(global.listaItens,0,1)
mouseOver = false
itemBought = false