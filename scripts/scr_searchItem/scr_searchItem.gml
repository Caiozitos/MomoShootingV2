function scr_searchItem(item, array){
    if is_undefined(array){
        array = global.playerItems
    }
    
    for (var i = 0; i < array_length(array); i++) {
        if (array[i].name == item) {
            return true;
        }
    }
    
    return false;
}
