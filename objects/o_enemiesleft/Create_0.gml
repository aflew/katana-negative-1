/// @description counters
lifespan = 300;
arrows = array_create(instance_number(o_enemy));

for (var i = 0; i<instance_number(o_enemy);i++) {
	var arrow = instance_create_layer(o_player.x,o_player.y,"front",o_enemyalivepointer);
	arrows[i] = arrow;
	with (arrow) {
		target = instance_find(o_enemy,i);
	}
}