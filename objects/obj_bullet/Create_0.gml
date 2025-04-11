image_angle = direction
if critical = false{
	var critValue = irandom_range(1,100)
	if critValue <= global.statCritic{
		critical = true
	}
}
if critical = true{
	damage *= 2
	audio_stop_sound(snd_enemyExplosion)
	audio_stop_sound(snd_pistolShot)
	audio_play_sound(snd_enemyExplosion,0,0,1,0,0.5)
	audio_play_sound(snd_pistolShot,0,0,1,0,0.5)
}
alarm[0] = 1

// Efeitos de itens
if scr_searchItem("Deodorant") {
    if irandom_range(1,100) <= 15 {
        if scr_searchItem("Lighter") {
            instance_create_depth(x, y, depth, obj_specialBullet, {
                sprite_index: spr_flame,
                direction: direction
            });
        } else {
            instance_create_depth(x, y, depth, obj_specialBullet, {
                sprite_index: spr_deodorantCloud,
                direction: direction
            });
        }
    }
}


