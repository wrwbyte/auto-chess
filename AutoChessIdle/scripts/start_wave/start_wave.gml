function start_wave(){
	wave++;
	wave_active = true;
	
	
	var count = irandom_range(1,3);
	alive = count;
	
	for (var i = 0; i < count; i++){
		var e = instance_create_layer(enemy_spawn_x, enemy_spawn_y + i * enemy_spawn_spacing, "Enemy", obj_blue);
		e.contoller = id; //tell enemy who tracks it
	}
}