direction = irandom_range(0,360)
var scale = random_range(0.8,1.1)
image_xscale = scale
image_yscale = scale
speed = 25
alarm[0] = 15 * 60
alarm[2] = 20 * 60

if room = rm_theStreets and global.currentWave >= 7{
	if irandom_range(1,200) = 3{
		instance_destroy()
		instance_create_depth(x,y,depth,obj_enemyMimicCoin)
	}
}