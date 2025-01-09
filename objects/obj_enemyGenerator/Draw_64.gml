if paused = false{
draw_set_font(fnt_generalBigBold)
draw_set_halign(fa_center)
draw_text(room_width/2+ 20,10,"Wave " + string(global.currentWave))
draw_set_font(fnt_hud)
draw_text(room_width/2 + 20,65,round(alarm[0]/60))

draw_set_halign(fa_left)
}