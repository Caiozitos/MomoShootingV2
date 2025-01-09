function scr_callEnemy() {
    // Escolher um inimigo de forma aleatória
    randomize();
    var choosenEnemy = irandom(array_length(global.enemyList) - 1);

    // Determinar posição de spawn
    var spawnX = choose(0, room_width / 2, room_width);
    var spawnY;

    if (spawnX != room_width / 2) {
        spawnY = choose(0, room_height / 2, room_height);
    } else {
        spawnY = choose(0, room_height);
    }

    // Criar a instância do inimigo escolhido
    instance_create_depth(spawnX, spawnY, depth, global.enemyList[choosenEnemy]);
}
