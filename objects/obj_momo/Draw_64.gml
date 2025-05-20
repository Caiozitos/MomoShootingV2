if paused = false{
// Definindo alguma coisa aí sla
draw_set_font(fnt_hpBar)
draw_set_color(c_black)

// Desenhando o HUD
var hpPercentage = (global.statHp/global.statMaxHp)*100
draw_healthbar(70,20,415,80,(global.statHp/global.statMaxHp)*100,c_maroon,c_red,c_lime,0,1,1)
draw_sprite(spr_hud,0,0,0)
var hpDisplay = string(round(global.statHp))+"/"+string(round(global.statMaxHp))
draw_text(200,23,hpDisplay)

if hpPercentage >= 75{
	var heartSprite = spr_heart100
}
else if hpPercentage >= 50 and hpPercentage < 75{
	var heartSprite = spr_heart75
}
else if hpPercentage >= 25 and hpPercentage < 50{
	var heartSprite = spr_heart50
}
else if hpPercentage < 25{
	var heartSprite = spr_heart25
}

draw_sprite(heartSprite,image_index,45,50)
draw_sprite_ext(obj_gun.sprite_index,obj_gun.image_index,1315,50,0.9,0.9,0,c_white,1)
draw_set_font(fnt_hud)
draw_text(118,95,global.money)
draw_set_halign(fa_right)
draw_set_font(fnt_hpBar)
draw_text(room_width-8,130,global.currentGun)
draw_set_halign(fa_left)
}
