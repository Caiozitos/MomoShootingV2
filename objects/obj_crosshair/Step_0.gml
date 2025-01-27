image_xscale = lerp(image_xscale,1,0.3)
image_yscale = lerp(image_yscale,1,0.3)
x = lerp(x,device_mouse_x(0),0.7)
y = lerp(y,device_mouse_y(0),0.7)

if alarm[0] > 1{
	image_angle += 15
}
else{
	image_angle = lerp(image_angle,0,0.5)
}
