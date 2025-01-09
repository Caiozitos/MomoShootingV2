switch global.currentWave{
	case 1:
		global.waveDuration = 15 * 60
		global.enemyList = [obj_enemyMaggot]
		break;
	
	case 2:
		global.waveDuration = 20 * 60
		break;
}




// Iniciando a wave
if global.nextWave = true{
	alarm[0] = global.waveDuration
	global.waveInterval = false
	global.nextWave = false
}