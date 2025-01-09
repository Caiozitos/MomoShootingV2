with all{
	paused = true
}
freeze = false

// Criando os botões
var colorButton = make_color_rgb(252,218,241)
instance_create_depth(350,710,depth-1,obj_backButton,{mainWindow: id, image_blend: colorButton})

// Criando os itens
global.listaItens = []
global.allGunsList = []
instance_create_depth(603,308,depth-50,obj_shopItem)
instance_create_depth(754,314,depth-50,obj_shopItem)
instance_create_depth(605,455,depth-50,obj_shopItem)
instance_create_depth(757,454,depth-50,obj_shopItem)
