if mouseOver = true and itemBought = false{
var box_sprite = spr_paperWindowSmall
var itemName = chosenItem.name
var itemDescription = chosenItem.desc
var itemEffect = chosenItem.descEffect
var itemType = chosenItem.itemType
draw_set_font(fnt_small)
var box_xscale = 10
var box_yscale = 5

draw_sprite_ext(spr_paperWindowSmall,0,mouse_x,mouse_y,box_xscale,box_yscale,0,c_white,1)

draw_set_font(fnt_hud)
draw_text(mouse_x + 10, mouse_y + 10, itemName)

draw_set_font(fnt_small)
draw_text_ext(mouse_x + 10,mouse_y + 48,itemDescription,30,string_width(itemDescription)/2.5)
draw_set_color(c_blue)
if string_pos("\n",itemEffect) > 0{var size = 1} else{var size = 2}
draw_text_ext(mouse_x + 10,mouse_y + string_height_ext(itemDescription,30,string_width(itemDescription)/3) + 20,itemEffect,30,string_width(itemEffect)/size)
}

draw_set_color(c_black)