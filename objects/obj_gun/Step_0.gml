#region Atributos

	// Atribuindo valores diferentes para cada arma
	switch global.currentGun{
		
		// Pistola
		case "Pistol":
			var gunDistance_ = 75
			var shotCooldown = 5
			var soundEffect = snd_pistolShot
	}

#endregion
#region Comportamento

	// Definindo atributos
	depth = -y - 20
	direction = point_direction(mouse_x,mouse_y,obj_momo.x,obj_momo.y)
	image_angle = direction

	// Definindo a posição
	x = obj_momo.x - lengthdir_x(gunDistance_,direction)
	y = obj_momo.y - lengthdir_y(gunDistance_,direction)
	
	if image_angle > 90 and image_angle < 270{
		image_yscale = -1
	}
	else{
		image_yscale = 1
	}
#endregion
#region Atirando
	
	if mouse_check_button_pressed(mb_left) and canShoot{
		image_index = 1				// Sprite de tiro
		alarm[0] = 6				// Resetando o sprite
		alarm[1] = shotCooldown		// Cooldown de tiro
		audio_play_sound(snd_pistolShot,0,0)
		
		// Criando a bala
		instance_create_depth(x,y,depth-9999,obj_bullet,{direction: point_direction(obj_momo.x,obj_momo.y,mouse_x,mouse_y), image_angle: point_direction(obj_momo.x,obj_momo.y,mouse_x,mouse_y), speed: 40})
		canShoot = false
	}
	
#endregion