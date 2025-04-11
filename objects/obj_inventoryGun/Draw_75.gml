if mouseOver = true and empty = false{
var box_sprite = spr_paperWindowSmall
var itemName = chosenItem.name
var itemDescription = chosenItem.desc
var itemEffect = chosenItem.descEffect
var itemType = chosenItem.itemType
var gunType = chosenItem.class
draw_set_font(fnt_small)
var box_xscale = 10
var box_yscale = 5
var synergyText = "Click to sell. ($" + string(round(chosenItem.cost * 0.75)) + ")"

// Desenhando a janela de papel
draw_sprite_ext(spr_paperWindowSmall,0,mouse_x,mouse_y,box_xscale,box_yscale,0,c_white,1)

// Definindo fonte do nome
draw_set_font(fnt_hud)

// Nome do item
draw_text(mouse_x + 10, mouse_y + 10, itemName)

// Tipo do item
draw_set_font(fnt_smaller)
draw_text(mouse_x + 100 + string_width(itemName), mouse_y + 32, "(" + string(gunType) + ")")
draw_set_font(fnt_hud)

// Definindo fonte da descrição
draw_set_font(fnt_small)

// Descrição do item
draw_text_ext(mouse_x + 10,mouse_y + 48,itemDescription,30,string_width(itemDescription)/2.5)

// Desenhando a descrição efetiva
draw_set_color(c_blue)
if string_pos("\n",itemEffect) > 0{var size = 1} else{var size = 2}
draw_text_ext(mouse_x + 10,mouse_y + string_height_ext(itemDescription,30,string_width(itemDescription)/3) + 20,itemEffect,30,string_width(itemEffect)/size)

// Mostrando o texto de combinação
draw_set_color(make_color_rgb(179, 134, 0))
draw_text(mouse_x+10,mouse_y+string_height_ext(itemEffect,30,string_height(itemDescription)/3)+240,synergyText)
}

draw_set_color(c_black)