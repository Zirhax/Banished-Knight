///scr_level1_spawner()
spawnSpd = room_speed/(global.currSpd * 0.2) + global.currSpd*2;
alarm[0] = spawnSpd;

position = random(spawnDiff) - random(spawnDiff) + y;

instance_create(room_width, position, obj_platform);
if(global.currSpd >= 30)
{
    instance_create(room_width+512, position, obj_platform);
}

obstacle = irandom(7/0.2); //20% risk per platform of encountering an obstacle

switch(obstacle)
{
    case 0:
        instance_create(room_width, position - 64, obj_obstacle);
    break;
    
    case 1:
        instance_create(room_width + 64, position - 64, obj_obstacle);
    break;
    
    case 2:
        instance_create(room_width + 128, position - 64, obj_obstacle);
    break;
    
    case 3:
        instance_create(room_width + 192, position - 64, obj_obstacle);
    break;
    
    case 4:
        instance_create(room_width + 256, position - 64, obj_obstacle);
    break;
    
    case 5:
        instance_create(room_width + 320, position - 64, obj_obstacle);
    break;
    
    case 6:
        instance_create(room_width + 384, position - 64, obj_obstacle);
    break;
    
    case 7:
        instance_create(room_width + 448, position - 64, obj_obstacle);
    break;
}
