if shakeLen = 0{
	camera_set_view_pos(view_camera[0],viewportX,viewportY)
}

if shakeLen >= 1{
	xShake = viewportX+(irandom_range(-shakeAmount,+shakeAmount))
	yShake = viewportY+(irandom_range(-shakeAmount,+shakeAmount))
	camera_set_view_pos(view_camera[0],xShake,yShake)
	shakeLen -= 1
}