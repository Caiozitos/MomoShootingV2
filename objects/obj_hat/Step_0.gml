#region Pegando as keybinds

	// Abrindo o arquivo com as binds
	var arquivoBinds_ = file_text_open_read("keybinds.ini")

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
	
	// Movimentando o personagem
	x += inputX * global.statSpeed
	y += inputY * global.statSpeed
	
#endregion
#region Mudnado o sprite
if obj_momo.sprite_index = spr_momoRun{
	sprite_index = global.hatSpriteRun
}
else{
	sprite_index = global.hatSpriteIdle
}

image_xscale = obj_momo.image_xscale
#endregion
depth = obj_momo.depth - 200
