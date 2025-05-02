repeat(moneyDrop){
	instance_create_depth(x,y,depth,obj_coin)
}
scr_freeze(40)
if dropFood <= 5{
	instance_create_depth(x,y,depth,obj_healingFood)
}