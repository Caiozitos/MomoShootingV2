var enemyNumber = round(global.currentWave / 3) + 1
if alarm[0] > 0{
repeat(enemyNumber){
	scr_callEnemy()
}
}
alarm[1] = 60