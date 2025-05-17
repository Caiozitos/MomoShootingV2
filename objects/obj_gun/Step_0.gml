if paused = false {
#region Atributos
	if os_type = os_windows {
		var _binds = file_text_open_read(working_directory + "keybinds.ini")
		repeat(4) { file_text_readln(_binds) }
		var keySwap = file_text_read_real(_binds)
		file_text_close(_binds)
	} else {
		var keySwap = vk_tab
	}
	
	switch global.currentGun {
		case "Bangbang":
			var gunDistance_ = 45
			var shotCooldown = 12
			var bulletDamage = global.statDamage
			var gunSprite = spr_gunBangbang
			var condition = mouse_check_button_pressed(mb_left)
			var bulletNumber = 1
			var recoil = 1
			var sound = snd_pistolShot
			var shake = 3
			sprite_index = gunSprite
			break;

		case "Steelhowl":
			var gunDistance_ = 65
			var shotCooldown = 20
			var bulletDamage = global.statDamage * 0.5
			var gunSprite = spr_gunSteelhowl
			var condition = mouse_check_button_pressed(mb_left)
			var bulletNumber = 4
			var recoil = 30
			var sound = snd_shotgunShoot
			var shake = 15
			sprite_index = gunSprite
			break;

		case "Blindrage":
			var gunDistance_ = 60
			var shotCooldown = 5
			var bulletDamage = global.statDamage * 0.20
			var gunSprite = spr_gunBlindrage
			var condition = mouse_check_button(mb_left)
			var bulletNumber = 1
			var recoil = 15
			var sound = snd_uziShot
			var shake = 3
			sprite_index = gunSprite
			break;

		case "BCK-2U":
			var gunDistance_ = 45
			var shotCooldown = 13
			var bulletDamage = global.statDamage
			var gunSprite = spr_gunBCK2U
			var condition = mouse_check_button(mb_left)
			var bulletNumber = 1
			var recoil = 1
			var sound = snd_pistolShot
			var shake = 3
			sprite_index = gunSprite
			break;

		case "Hexcrash":
			var condition = mouse_check_button_pressed(mb_left) and sprite_index != spr_gunHexcrashSpin
			if condition and canShoot {
				revolverShots += 1
				if revolverShots = 6 {
					revolverShots = 0
					audio_play_sound(snd_hexcrashSpin, 0, 0)
					sprite_index = spr_gunHexcrashSpin
				}
			}
			var gunDistance_ = 55
			var shotCooldown = 20
			var bulletDamage = global.statDamage * 0.90 + (global.statDamage * 0.1) * revolverShots
			var gunSprite = spr_gunHexcrash
			var bulletNumber = 1
			var recoil = 2 + revolverShots 
			var sound = snd_revolverShot
			var shake = 5.5 * revolverShots
			image_blend = make_color_rgb(255, 255 - 50 * revolverShots, 255 - 50 * revolverShots)
			// Não define sprite_index aqui diretamente pra manter o spr_gunHexcrashSpin se ativo
			if sprite_index != spr_gunHexcrashSpin {
				sprite_index = gunSprite
			}
			break;
	}

#endregion

#region Comportamento
	depth = -y - 20

	switch os_type {
		case os_windows:
			direction = point_direction(device_mouse_x(0), device_mouse_y(0), obj_momo.x, obj_momo.y)
			x = obj_momo.x - lengthdir_x(gunDistance_, direction)
			y = obj_momo.y - lengthdir_y(gunDistance_, direction)
			image_angle = direction
			image_xscale = lerp(image_xscale, 1, 0.3)
			image_yscale = lerp(image_yscale, 1, 0.3)
			break;

		case os_android:
			direction = -point_direction(obj_gunJoystick.x, obj_gunJoystick.y, obj_gunJoystick.alavancaX, obj_gunJoystick.alavancaY)
			x = obj_momo.x + lengthdir_x(gunDistance_, direction)
			y = obj_momo.y - lengthdir_y(gunDistance_, direction)
			image_angle = point_direction(obj_gunJoystick.x, obj_gunJoystick.y, obj_gunJoystick.alavancaX, obj_gunJoystick.alavancaY)
			image_xscale = -1
			break;
	}
	

	if image_angle > 90 and image_angle < 270 {
		image_yscale = -1
	} else {
		image_yscale = 1
	}
#endregion

#region Atirando
	if os_type = os_android {
		condition = obj_gunJoystick.x != obj_gunJoystick.alavancaX
	}
	if condition and canShoot {
		image_index = 1
		alarm[0] = 6
		alarm[1] = shotCooldown / max(global.statShotRate, 0.01)
		audio_play_sound(sound, 0, 0,,,1 - 0.1 * revolverShots)
		scr_screenshake(shake, 5)

		var bulletDirection = (os_type == os_android)
			? point_direction(obj_gunJoystick.x, obj_gunJoystick.y, obj_gunJoystick.alavancaX, obj_gunJoystick.alavancaY)
			: point_direction(x, y, mouse_x, mouse_y)

		repeat(bulletNumber) {
			instance_create_depth(x, y, depth - 9995, obj_bullet, {
				direction: bulletDirection + irandom_range(-recoil, recoil),
				speed: 40,
				damage: bulletDamage,
			})
			image_xscale = random_range(1.2, 1.5) * sign(image_xscale)
			image_yscale = random_range(1.2, 1.5) * sign(image_yscale)
		}

		canShoot = false
	}
#endregion

#region Mudando a arma
	if keyboard_check_pressed(keySwap) and array_length(global.equippedGuns) > 1 and sprite_index != spr_gunHexcrashSpin{
		image_blend = c_white
		revolverShots = 0
		audio_stop_sound(snd_equip)
		audio_play_sound(snd_equip, 0, 0)
		if global.currentGun = global.equippedGuns[0] {
			global.currentGun = global.equippedGuns[1]
		} else {
			global.currentGun = global.equippedGuns[0]
		}
	}
#endregion
}
