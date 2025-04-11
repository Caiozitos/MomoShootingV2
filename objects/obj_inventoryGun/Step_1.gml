// Sprite do item
if empty = false{
	sprite_index = spr_shopItems
	image_index = chosenItem.itemId - 1
}
else{
	sprite_index = spr_itemBought
}
if obj_neneShop.freeze = true{
	image_alpha = 1
}
else{
	image_alpha = 0 
}