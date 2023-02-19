/// @description tracks sword variables and cooldowns
// creates sword and dashind, and pointer

playerSword = instance_create_layer(x,y,"sword",o_sword);
swordHeld = 1;
attack_cooldown = 0;
can_dash = 1;
dash_cd = 0;
instance_create_layer(x,y,"front",o_dashind);
instance_create_layer(x,y,"front",o_pointer);
