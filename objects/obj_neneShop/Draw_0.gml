draw_self()
draw_set_font(fnt_hpBar)
draw_set_halign(fa_center)
draw_text(room_width/2,550,$"Money: ${global.money}")
draw_set_halign(fa_left)
draw_set_font(fnt_small)
var xx = 880;
var stats = [[global.statMaxHp, global.statDamage, global.statSpeed, global.statCritic, global.statShotRate], ["Max Health", "Damage", "Mov. Speed", "Critic %","Shot rate"]];
var col = c_black;
for (var i = 0; i < array_length(stats[0]); i++) {
    draw_set_color(col);
	if freeze = true{
    draw_text(xx, 250 + 35 * i, string(stats[1][i]) + ": " + string(round((stats[0][i]*100)/100)));
	}
	if (col == c_black) {
        col = c_dkgray;
    } else {
        col = c_black;
    }
}
draw_set_color(c_black);
