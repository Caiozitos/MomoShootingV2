function scr_addKill(){
	kills += 1
	alarm[0] = 90
	image_alpha = 1
	drawY -= 40
	drawScaleX = random_range(1.10,1.40)
	drawScaleY = random_range(1.10,1.40)
}