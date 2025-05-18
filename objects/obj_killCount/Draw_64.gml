draw_set_alpha(image_alpha)
draw_sprite(sprite_index,0,1366,612)
draw_sprite(sprite_index,1,drawX,drawY)
var font = font_add_sprite_ext(spr_damageFontBig,"0123456789A.!x",true,0)
draw_set_font(font)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_text_ext_transformed(1250,612,$"{kills}x",20,1000,drawScaleX,drawScaleY,0)
draw_set_halign(fa_left)
draw_sprite(sprite_index,2,1366,612)
draw_healthbar(1090,690,1366,700,alarm[0],c_green,c_lime,c_lime,1,false,0)
draw_set_alpha(1)
drawY = lerp(drawY,612,0.6)
drawScaleX = lerp(drawScaleX,1,0.3)
drawScaleY = lerp(drawScaleY,1,0.3)


if kills > 0{
	image_alpha = lerp(image_alpha,0.8,0.2)
}
else{
	image_alpha = lerp(image_alpha,0,0.3)
}

draw_set_color(c_black)