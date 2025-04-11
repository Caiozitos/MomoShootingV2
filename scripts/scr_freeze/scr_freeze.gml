if (!variable_global_exists("freeze_cooldown")) {
    global.freeze_cooldown = 0;
}

function scr_freeze(time) {
    if (current_time >= global.freeze_cooldown) {
        global.freeze_cooldown = current_time + time;

        var _t = current_time + time;
        while (current_time < _t) {
        }
    }
}
