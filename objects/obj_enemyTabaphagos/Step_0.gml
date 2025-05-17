#region Comportamento
// Perseguindo o personagem
if effect != "Blind"{
direction = point_direction(x,y,obj_momo.x,obj_momo.y)
}
switch dash{
	case "Yes":
		moveSpeed = 15
		direction = target 
		image_yscale = 1
		break;
	
	case "Prepare":
		moveSpeed = 0
		sprite_index = spr_enemyTabaphagosPrepare
		target = point_direction(x,y,obj_momo.x,obj_momo.y)
		break;
		
	case "No":
		dashTimer -= 1
		moveSpeed = 3
		if dashTimer <= 0{
			dash = "Prepare"
		}
		break;
}
speed = moveSpeed * speedModifier
if dash != "Yes"{
if x - obj_momo.x < 0{
		image_xscale = -1
	}
	else{
		image_xscale = 1
	}
}

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
show_debug_message(dashTimer)
show_debug_message(dash)