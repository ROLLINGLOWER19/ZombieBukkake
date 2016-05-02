///sc_newWave()
var radius = o_wave.radius;

var xc = o_wave.xcenter;
var yc = o_wave.ycenter;

var spawners = ceil(o_wave.wave / 2);
var zombies = o_wave.wave;

var rad = 0;
var step = (2 * pi) / spawners;

var xx = (cos(rad) * radius) + xc;
var yy = (sin(rad) * radius) + yc;

var spawn;

for (var i = 0; i < spawners; i++) {
    spawn = instance_create(xx, yy, o_spawner);
    spawn.zombie = zombies;
    rad += step;
    xx = (cos(rad) * radius) + xc;
    yy = (sin(rad) * radius) + yc;
}

