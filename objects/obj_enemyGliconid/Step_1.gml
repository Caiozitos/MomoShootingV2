if instance_exists(obj_healingFood){
	if target = "Momo"{
		instance_create_depth(x,y,depth,obj_damageFeedback,{color: c_white,text:"!"})
		alarm[2] = 60
		audio_play_sound(snd_chaChing,0,0,,,0.8)
		target = "Food"
	}
}
else{
	target = "Momo"
}
