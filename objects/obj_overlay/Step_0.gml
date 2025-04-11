if place_meeting(x,y,obj_crosshair) or place_meeting(x,y,obj_momo){
	image_alpha = lerp(image_alpha,0.3,0.1)
}
else{
	image_alpha = lerp(image_alpha,1,0.1)
}

depth = -9999