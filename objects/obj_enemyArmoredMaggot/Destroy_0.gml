event_inherited();
repeat(8){
	instance_create_depth(x + random_range(-60,60), y + random_range(-60,60), depth, obj_smoke, {sprite_index: spr_smokePuff, image_blend: make_color_rgb(42, 15, 66), image_xscale: 1.5, image_yscale: 1.5})		
}
audio_stop_sound(snd_rockBreak)
audio_play_sound(snd_rockBreak,1,0)
