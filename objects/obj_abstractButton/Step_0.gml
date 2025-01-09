if mouseOver = true{
	var sizeLerp = 1.2
}
else{
	var sizeLerp = 1
}

image_xscale = lerp(image_xscale,sizeLerp,0.2)
image_yscale = lerp(image_yscale,sizeLerp,0.2)
image_angle = lerp(image_angle,1,0.2)