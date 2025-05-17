switch global.currentWave{
	case 1:
		global.waveDuration = 15 * 60
		global.enemyList = [obj_enemyMaggot]
		break;
	
	case 2:
		global.waveDuration = 15 * 60
		global.enemyList = [obj_enemyMaggot, obj_enemyPsychomite]
		break;
		
	case 3:
		global.waveDuration = 20 * 60
		global.enemyList = [obj_enemyMaggot, obj_enemyPsychomite, obj_enemyPsychomite, obj_enemyArmoredMaggot]
		break;
		
	case 4:
		global.waveDuration = 25 * 60
		global.enemyList = [obj_enemyPsychomite, obj_enemyBuzzrot]
		break;
		
	case 5:
		global.waveDuration = 25 * 60
		global.enemyList = [obj_enemyBuzzrot, obj_enemyBuzzrot, obj_enemyBuzzrot, obj_enemyGliconid]
		break
		
	case 6:
	global.waveDuration = 30 * 60
	global.enemyList = [obj_enemyBuzzrot, obj_enemyGliconid,obj_enemyTabaphagos]
	break;
}




// Iniciando a wave
if global.nextWave = true{
	alarm[0] = global.waveDuration
	global.waveInterval = false
	scr_quickMessage($"Wave {global.currentWave}", "New enemies incoming!")
	global.nextWave = false
}