global.currentWave = 1
global.waveInterval = false
global.coinPitch = 0
alarm[2] = 30
paused = false
global.nextWave = false
var enemySpawn = alarm[1]

alarm[0] = 10 * 60
alarm[1] = 60

instance_create_depth(-100,625,depth,obj_textBox,{
	bigText: $"Wave {global.currentWave}",
	smallText: "New enemies incoming!",
	moveSpeed: 80,
	image_xscale: 2})
	
