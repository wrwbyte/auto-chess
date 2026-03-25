def = 2;
hp = 50;
controller = obj_game_controller;

if (hp <= 0) {
    if (instance_exists(controller)) {
        controller.enemies_alive--;
    }
    instance_destroy();
}
