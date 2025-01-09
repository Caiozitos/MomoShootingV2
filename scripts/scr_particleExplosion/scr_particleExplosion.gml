function scr_particleExplosion(sprite,amount,spd,fadespd,spdlerp,color){
	repeat(amount){
		instance_create_depth(x,y,depth,obj_smoke,{
			sprite_index: sprite,
			particle: true,
			partSpeed: spd,
			fadeSpeed: fadespd,
			speedLerp: spdlerp,
			image_blend: color
		})
	}
}