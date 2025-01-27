// Valores de cada inimigo
switch type{
	case "maggot":
		moveSpeed = 4
		contactDamage = 3
		hp = 8
		hitSound = snd_alienHit
		deathSound = snd_enemyExplosion
		bloodParticle = spr_bloodParticle
		bloodColor = make_color_rgb(77, 0, 77)
		moneyDrop = 3
}

// Iniciando em um frame aleatorio para evitar duplicados
image_index = irandom_range(0, sprite_get_number(sprite_index))

// Iniciando variáveis gerais
hitFlash = false
hitFlashTimer = 0
hitboxCreated = false
alarm[0] = 40 // Hitbox
textAlpha = 1
speedModifier = 1
effect = "Burn"
aksdhjadsadh