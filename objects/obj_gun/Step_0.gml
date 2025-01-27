if paused = false{
#region Atributos

	// Tecla de trocar de arma
	var _binds = file_text_open_read(working_directory + "keybinds.ini")
	repeat(4){
		file_text_readln(_binds)
	}
	var keySwap = file_text_read_real(_binds)
	file_text_close(_binds)

	// Atribuindo valores diferentes para cada arma
	switch global.currentGun{
		
		// Pistola
		case "Bangbang":
			var gunDistance_ = 45
			var shotCooldown = 10
			var soundEffect = snd_pistolShot
			var bulletDamage = global.statDamage
			var gunSprite = spr_gunBangbang
			var screenshakeValue = 6
			var condition = mouse_check_button_pressed(mb_left)
			var bulletNumber = 1
			var recoil = 1
			var class = "Pistol"
			var sound = snd_pistolShot
			var shake = 5
			break;
			
		case "Steelhowl":
			var gunDistance_ = 65
			var shotCooldown = 20
			var soundEffect = snd_pistolShot
			var bulletDamage = global.statDamage * 0.5
			var gunSprite = spr_gunSteelhowl
			var screenshakeValue = 6
			var condition = mouse_check_button_pressed(mb_left)
			var bulletNumber = 4
			var recoil = 30
			var class = "Shotgun"
			var sound = snd_shotgunShoot
			var shake = 15
			break;
	}

#endregion
#region Comportamento

	// Definindo atributos
	depth = -y - 20
	switch os_type{
		case os_windows: 
			direction = point_direction(device_mouse_x(0),device_mouse_y(0),obj_momo.x,obj_momo.y)
			x = obj_momo.x - lengthdir_x(gunDistance_,direction)
			y = obj_momo.y - lengthdir_y(gunDistance_,direction)
			image_angle = direction
			//Lerpando o game feel
			image_xscale = lerp(image_xscale,1,0.3) 
			image_yscale = lerp(image_yscale,1,0.3) 
			break;
		case os_android: 
			direction = -point_direction(obj_gunJoystick.x,obj_gunJoystick.y,obj_gunJoystick.alavancaX,obj_gunJoystick.alavancaY)
			x = obj_momo.x + lengthdir_x(gunDistance_,direction)
			y = obj_momo.y - lengthdir_y(gunDistance_,direction)
			image_angle = point_direction(obj_gunJoystick.x,obj_gunJoystick.y,obj_gunJoystick.alavancaX,obj_gunJoystick.alavancaY)
			image_xscale = -1
			break;
	}
	sprite_index = gunSprite
	if image_angle > 90 and image_angle < 270{
		image_yscale = -1
	}
	else{
		image_yscale = 1
	}
	

	         
#endregion
#region Atirando
	if os_type = os_android{
		condition = obj_gunJoystick.x != obj_gunJoystick.alavancaX
	}
	if condition and canShoot{
		image_index = 1				// Sprite de tiro
		alarm[0] = 6				// Resetando o sprite
		alarm[1] = shotCooldown		// Cooldown de tiro
		audio_play_sound(sound,0,0)
		scr_screenshake(shake,5)
		
		// Criando a bala
		if os_type = os_android{var bulletDirection = point_direction(obj_gunJoystick.x,obj_gunJoystick.y,obj_gunJoystick.alavancaX, obj_gunJoystick.alavancaY)}
		if os_type = os_windows{var bulletDirection = point_direction(x,y,mouse_x,mouse_y)}
		repeat(bulletNumber){
		instance_create_depth(x,y,depth-9999,obj_bullet,{
			direction: bulletDirection + irandom_range(-recoil,recoil),
			speed: 40,
			damage: bulletDamage,})
			
			
		// Distorcendo
		image_xscale = random_range(1.5,2)
		image_yscale = random_range(1.5,2)
		}
	
		canShoot = false
	}
	
#endregion
#region Mudando a arma
	if keyboard_check_pressed(keySwap){
		audio_stop_sound(snd_equip)
		audio_play_sound(snd_equip,0,0)
		if global.currentGun = global.equippedGuns[0]{
			global.currentGun = global.equippedGuns[1]
		}
		else{
			global.currentGun = global.equippedGuns[0]
		}
	}

#endregion
}