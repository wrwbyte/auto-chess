shoot_timer++;

if(shoot_timer >= attack_speed) {
	shoot_timer = 0;
	
	var b = instance_create_layer(x, y, "Enemy", obj_red_proj);
	b.damage = attack;
	b.target = instance_nearest(x,y, obj_blue);
}