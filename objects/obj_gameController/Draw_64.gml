/// @description CHEAT CODES
// Change this variable to true or false to activate cheat codes
var debug = true

draw_set_font(fnt_hpBar)
if debug = true{

	if keyboard_check_pressed(vk_f1){
		debugText = "[Debug] 100% Life"
		global.statHp = global.statMaxHp
	}
	
	
	if keyboard_check_pressed(vk_f2){
		debugText = "[Debug] Flashbang"
		obj_abstractEnemy.effect = "Blind"
	}
	
	draw_text(0,room_height-35,debugText)
}

