#region Comportamento
// Perseguindo o personagem
if point_distance(x,y,obj_momo.x,obj_momo.y) <= 200{
	if sprite_index = spr_enemyMimicCoinDisguised{
		repeat(12){
			instance_create_depth(x+irandom_range(-50,50), y+irandom_range(-50,50),depth-100,obj_smoke,{sprite_index: spr_smokePuff, image_blend: c_yellow})
		}
		alarm[2] = 30
		sprite_index = spr_enemyCoinMimic
		audio_play_sound(snd_coinDrop,0,0,,,0.8)
		scr_freeze(45)
	}
}
if effect != "Blind"{
	direction = point_direction(x,y,obj_momo.x,obj_momo.y)
	if x - obj_momo.x < 0{
		image_xscale = -1
	}
	else{
		image_xscale = 1
	}
}
speed = moveSpeed * speedModifier

// Mantendo a depth
depth = -y

// Colisão com algo
if !instance_exists(other){
	return
}
#endregion

#region Colisão
// Verifica se há colisão com o inimigo
var colisor = instance_place(x, y, all);
if (colisor != noone && object_get_parent(colisor.object_index) == obj_abstractEnemy) {
    if place_meeting(x + moveSpeed, y, colisor) {
        x -= moveSpeed;  
    }
    
    if place_meeting(x - moveSpeed, y, colisor) {
        x += moveSpeed;
    }

    if place_meeting(x, y - moveSpeed, colisor) {
        y += moveSpeed;
    }

    if place_meeting(x, y + moveSpeed, colisor) {
        y -= moveSpeed;  
    }
}
#endregion

#region Morrendo
if hp <= 0{
	instance_destroy()
}
#endregion
