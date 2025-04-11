#region Comportamento
// Perseguindo o personagem
if effect != "Blind"{
direction = point_direction(x,y,obj_momo.x,obj_momo.y)
if x - obj_momo.x < 0{
	image_xscale = -1
}
else{
	image_xscale = 1
}
}

if image_index >= 7 and image_index <= 8{
	moveSpeed = 6
}
else{
	moveSpeed = lerp(moveSpeed,0,0.1)
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
