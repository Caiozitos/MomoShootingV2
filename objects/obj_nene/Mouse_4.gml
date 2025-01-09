if global.waveInterval and point_distance(obj_momo.x,obj_momo.y,x,y) < 300 and !instance_exists(obj_neneShop){
	instance_create_depth(0,0,-9999,obj_neneShop)
}