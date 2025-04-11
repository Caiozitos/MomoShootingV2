switch global.currentWave{
	case 1:
		global.waveDuration = 10 * 60
		global.enemyList = [obj_enemyMaggot]
		break;
	
	case 2:
		global.waveDuration = 12 * 60
		global.enemyList = [obj_enemyMaggot]
		break;
		
	case 3:
		global.waveDuration = 15 * 60
		global.enemyList = [obj_enemyMaggot, obj_enemyArmoredMaggot]
		break;
}




// Iniciando a wave
if global.nextWave = true{
	alarm[0] = global.waveDuration
	global.waveInterval = false
	scr_quickMessage($"Wave {global.currentWave}", "New enemies incoming!")
	global.nextWave = false
}