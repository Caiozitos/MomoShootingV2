if itemBought = false{
	if chosenItem.cost > global.money{
		var color = c_red
	}
	else{
		var color = c_black
	}
	var itemPrice = "$ "+ string(chosenItem.cost)

}
else{
	var color = c_black
	var itemPrice = "Sold Out!!"
}
draw_set_font(fnt_small)
draw_set_halign(fa_center)
if image_alpha = 1{
	draw_set_color(color)
	draw_text(x,y+73,itemPrice)
	draw_set_color(c_black)
}
 
draw_set_halign(fa_left)