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