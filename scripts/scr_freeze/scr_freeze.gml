function scr_freeze(time){
	if global.freezeScreen = false{
	var _freezedur = time;
	var _t = current_time + _freezedur;
	while(current_time < _t){
	global.freezeScreen = true
	};
	global.freezeScreen = false
	}
}