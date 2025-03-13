function scr_searchItem(item,array){
	if is_undefined(array){
		array = global.playerItems
	}
	for(var i=0; i<array_length(array); i+=1){
			if array[i].name = item{
				return true
			}
			else{
				return false
			}
		}
}
