#region Limites
if global.statHp > global.statMaxHp{
	global.statHp = global.statMaxHp
}

global.money = round(global.money)
#endregion
#region Watcher
for (var i = 0; i < 5; i += 1){
	if device_mouse_check_button_pressed(i, mb_any){
		with(instance_create_layer(device_mouse_x(i),device_mouse_y(i),layer,obj_indicator)){
			my_touch = i
		}
	}
}
#endregion
