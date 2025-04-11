var camWidth = camera_get_view_width(view_camera[0]);
var camHeight = camera_get_view_height(view_camera[0]);
var maxMove = 10;

var targetX, targetY;

if (!instance_exists(obj_neneShop)) {
    var angle = point_direction(obj_momo.x, obj_momo.y, obj_crosshair.x, obj_crosshair.y);
    var dist = point_distance(obj_momo.x, obj_momo.y, obj_crosshair.x, obj_crosshair.y) / 2;
    var midX = obj_momo.x + lengthdir_x(dist, angle);
    var midY = obj_momo.y + lengthdir_y(dist, angle);
    targetX = viewportX + (midX - viewportX - camWidth / 2) * 0.05;
    targetY = viewportY + (midY - viewportY - camHeight / 2) * 0.05;
} else {
    targetX = viewportX;
    targetY = viewportY;
}

var deltaX = targetX - camera_get_view_x(view_camera[0]);
var deltaY = targetY - camera_get_view_y(view_camera[0]);

if (abs(deltaX) > maxMove) {
    targetX = camera_get_view_x(view_camera[0]) + sign(deltaX) * maxMove;
}

if (abs(deltaY) > maxMove) {
    targetY = camera_get_view_y(view_camera[0]) + sign(deltaY) * maxMove;
}

if (shakeLen == 0) {
    var viewportX2 = lerp(camera_get_view_x(view_camera[0]), targetX, 0.5);
    var viewportY2 = lerp(camera_get_view_y(view_camera[0]), targetY, 0.5);
    camera_set_view_pos(view_camera[0], viewportX2, viewportY2);
}

if (shakeLen >= 1) {
    xShake = targetX + irandom_range(-shakeAmount, +shakeAmount);
    yShake = targetY + irandom_range(-shakeAmount, +shakeAmount);
    camera_set_view_pos(view_camera[0], xShake, yShake);
    shakeLen -= 1;
}
