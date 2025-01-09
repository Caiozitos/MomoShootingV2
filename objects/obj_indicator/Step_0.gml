x = device_mouse_x(my_touch)
y = device_mouse_y(my_touch)
if device_mouse_check_button_released(my_touch,mb_any){
	if place_meeting(x,y,obj_gunJoystick){
		obj_gunJoystick.touchIndicator = -1
		obj_gunJoystick.alavancaX = obj_gunJoystick.x
		obj_gunJoystick.alavancaY = obj_gunJoystick.y
	}
	if place_meeting(x,y,obj_joystick){
		obj_joystick.touchIndicator = -1
		obj_joystick.alavancaX = obj_joystick.x
		obj_joystick.alavancaY = obj_joystick.y
	}
	instance_destroy()
}