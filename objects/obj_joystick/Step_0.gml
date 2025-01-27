if touchIndicator = -1 or instance_exists(obj_neneShop){
exit}
else{
	direcao = point_direction(x, y, touchIndicator.x,touchIndicator.y);
	var deadzoneGeral =  1200;
	var deadzoneAlavanca = 150;
	var dist = point_distance(x, y, touchIndicator.x,touchIndicator.y);

	if (mouse_check_button(mb_any) && point_distance(x, y, touchIndicator.x,touchIndicator.y) < deadzoneGeral) {
	    if (dist > deadzoneAlavanca){
			dist = deadzoneAlavanca;
		}
	    alavancaX = x + lengthdir_x(dist, direcao);
	    alavancaY = y + lengthdir_y(dist, direcao);
	}
	else{
		touchIndicator = -1
		alavancaX = x
		alavancaY = y
	}
}