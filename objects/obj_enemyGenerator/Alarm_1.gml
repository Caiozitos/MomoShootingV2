var enemyNumber = round(global.currentWave / 4) + 1
if alarm[0] > 0{
repeat(enemyNumber){
	scr_callEnemy()
}
}
alarm[1] = 60