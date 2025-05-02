if instance_exists(obj_healingFood){
	if target = "Momo"{
		instance_create_depth(x,y,depth,obj_damageFeedback,{color: c_white,text:"!"})
		alarm[2] = 30
		target = "Food"
	}
}
else{
	target = "Momo"
}
