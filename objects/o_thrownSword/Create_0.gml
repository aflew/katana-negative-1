/// @description initial velocity + sets pickup cooldown

image_angle = o_player.pointing;
vsp = lengthdir_y(13,image_angle);
hsp = lengthdir_x(13,image_angle);
grv = 0.1;
done = 0;

image_speed = 0;
image_index = 0;

pickupCD = 60;
onFloor = 0;

recall = false;
recalldir = 0;
damage = 2;

recallstrength = 1;
directionrecalc = 0;