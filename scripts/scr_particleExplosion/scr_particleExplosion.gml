function scr_particleExplosion(sprite,amount,spd,fadespd,spdlerp,color,xx=x,yy=y){
	repeat(amount){
		instance_create_depth(xx,yy,depth,obj_smoke,{
			sprite_index: sprite,
			particle: true,
			partSpeed: spd,
			fadeSpeed: fadespd,
			speedLerp: spdlerp,
			image_blend: color
		})
	}
}