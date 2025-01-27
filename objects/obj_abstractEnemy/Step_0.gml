#region Comportamento
// Perseguindo o personagem
direction = point_direction(x,y,obj_momo.x,obj_momo.y)
speed = moveSpeed * speedModifier
if x - obj_momo.x < 0{
	image_xscale = -1
}
else{
	image_xscale = 1
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