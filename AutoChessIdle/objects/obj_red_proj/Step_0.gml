if (!instance_exists(target)){
	target = instance_nearest(x, y, obj_blue);
	if (!instance_exists(target)) {//check for all blue to be dead
        instance_destroy();
        exit;
    }
}

//move towards blue
direction = point_direction(x,y, target.x, target.y)

//collision
if (place_meeting(x,y, target)) {
	var dmg = max(0, damage - target.def);
	target.hp -= dmg;
	
	if (target.hp <= 0) {
		if (instance_exists(target.controller)) {
            target.controller.alive--;
        }
        instance_destroy(target);
	}
	
	instance_destroy();
}
