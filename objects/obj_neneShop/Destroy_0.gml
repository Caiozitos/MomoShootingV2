/// @description PRosseguindo com o jogo
with all{
	paused = false
}
global.currentWave += 1
global.waveInterval = false
global.nextWave = true
obj_nene.sprite_index = spr_neneIdle
instance_destroy(obj_backButton)
instance_destroy(obj_shopItem)
instance_destroy(obj_shopGun)
instance_destroy(obj_inventoryGun)
global.itemList = []
global.listaItens = []
global.listaArmas = []