 if paused = false{
#region Pegando as keybinds

	// Abrindo o arquivo com as binds
	var arquivoBinds_ = file_text_open_read(working_directory + "keybinds.ini")

	// Definindo cada tecla com base no arquivo de binds
	var keyLeft_ = file_text_read_string(arquivoBinds_) file_text_readln(arquivoBinds_)
	var keyDown_ = file_text_read_string(arquivoBinds_) file_text_readln(arquivoBinds_)
	var keyRight_ = file_text_read_string(arquivoBinds_) file_text_readln(arquivoBinds_)
	var keyUp_ = file_text_read_string(arquivoBinds_) file_text_readln(arquivoBinds_)

	// Fechando o arquivo
	file_text_close(arquivoBinds_)
	
#endregion
#region Movimento
	
	// Pegando os valores de direção horizontal e vertical
	inputX = keyboard_check(keyRight_) - keyboard_check(keyLeft_)
	inputY = keyboard_check(keyDown_) - keyboard_check(keyUp_)
	
	// Movimentando o personagem ---- PC
	x += inputX * global.statSpeed
	y += inputY * global.statSpeed
	
	// Movimentando o personagem ---- ANDROID
	if os_type = os_android{
		with obj_joystick{
			if alavancaX != x and alavancaY != y{
				other.sprite_index = spr_momoRun
				other.direction = point_direction(x,y,alavancaX,alavancaY)
				other.speed = global.statSpeed
				if alavancaX <= x{
					other.image_xscale = 1
				}
				else{
					other.image_xscale = -1
				}
			}
			else{
				other.speed = 0
				other.direction = 0
				other.sprite_index = spr_momoIdle
			}
		}
	}
#endregion
#region Sprites
	
	if os_type != os_android{
	// Mudando entre o sprite de andar e ficar parado
	if inputX != 0 or inputY != 0{
		sprite_index = spr_momoRun
	}
	else{
		sprite_index = spr_momoIdle
	}
	
	// Mudando a direção que o personagem oha
	if inputX != 0{
	image_xscale = -inputX
	}
	}
	
	depth = -y
#endregion
#region Morrendo
	if global.statHp <= 0{
		global.deadX = x
		global.deadY = y
		room_goto(rm_gameOver)
	}
#endregion
}
