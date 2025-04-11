function scr_quickMessage(title,subtitle){
	instance_create_depth(-100,625,depth,obj_textBox,{
	bigText: title,
	smallText: subtitle,
	moveSpeed: 80,
	image_xscale: 2})
	
}