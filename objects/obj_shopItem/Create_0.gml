// Pegando todos os itens
var arquivoItens = file_text_open_read("itemsGlobal.ini")
if array_length(global.listaItens) = 0 {
while !file_text_eof(arquivoItens){
	var item = file_text_read_string(arquivoItens)
	array_push(global.listaItens,item)
	file_text_readln(arquivoItens)
}
}

// Fazendo a lista de armas
for(var i = 0;i < array_length(global.listaItens); i += 1){
	var gunItem = json_parse(global.listaItens[i])
	if gunItem.itemType = "Gun"{
	array_push(global.allGunsList, gunItem)
	array_delete(global.listaItens, gunItem, 1)
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
