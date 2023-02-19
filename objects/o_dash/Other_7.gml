/// @description Insert description here
// You can write your code in this editor
with (o_player) {
	vsp = vsp*0.4;
	hascontrol = 1;
}
instance_create_layer(x,y,layer,o_gravreduce);
instance_destroy();
