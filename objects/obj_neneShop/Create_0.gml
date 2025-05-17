with all{
	paused = true
}
audio_group_set_gain(grp_soundtrack,0.4,3000)
x = 683
y = 384
freeze = false
depth=-9999
// Criando os botões
var colorButton = make_color_rgb(252,218,241)
instance_create_depth(350,710,depth-1,obj_backButton,{mainWindow: id, image_blend: colorButton})

// Criando os itens
global.listaItens = []
global.listaArmas = []
obj_gun.revolverShots = 0
camera_set_view_pos(view_camera[0],obj_camera.viewportX,obj_camera.viewportY)
instance_create_depth(603,308,depth-50,obj_shopItem)
instance_create_depth(754,314,depth-50,obj_shopItem)
instance_create_depth(605,455,depth-50,obj_shopItem)
instance_create_depth(757,454,depth-50,obj_shopItem)
instance_create_depth(360,325,depth-50,obj_shopGun)
instance_create_depth(300,520,depth-50,obj_inventoryGun,{gunIndex: 0})
instance_create_depth(415,520,depth-50,obj_inventoryGun,{gunIndex: 1})
