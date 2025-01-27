// Efeito hitflash
draw_self();
if hitFlash = true{
gpu_set_fog(true, c_white, 0, 0);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_aqua, 1);
gpu_set_fog(false, c_white, 0, 0);
hitFlashTimer -= 1
}

if hitFlashTimer <= 0{
	hitFlash = false
}

#region Efeitos
switch effect{
	case "None":
		image_blend = c_white
	case "Slow":
		image_blend = c_gray
	case "Burn":
		image_blend = c_orange
		draw_sprite_ext(spr_LighterRun,image_index,x,y,sprite_width/100,sprite_height/100,0,c_white,1)
}
#endregion