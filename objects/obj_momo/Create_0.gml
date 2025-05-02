// Atributos
global.statSpeed = 8
global.statDamage = 5
global.statHp = 15
global.statMaxHp = 15
global.statCritic = 2
global.statShotRate = 1
global.money = 20
global.playerItems = []
global.vanityIdle = []
global.vanityRun = []
global.foodHpRecover = 2
paused = false

// Outras variáveis
depth = -y
invencible = false
hitflashSwitchTime = 5
alarm[0] = 3

// Criando objetos
instance_create_depth(x,y,depth-200,obj_hat)
instance_create_depth(x,y,depth-200,obj_vanity)
instance_create_depth(x,y,depth-200,obj_gun)
instance_create_depth(room_width/2,room_height/2,depth-1500,obj_damageIndicator,{image_xscale: 1.1, image_yscale: 1.1})
instance_create_depth(x,y,depth-200,obj_camera)
if os_type = os_android{
instance_create_depth(x,y,-900000000,obj_joystick)
instance_create_depth(x,y,-900000000,obj_gunJoystick)
}