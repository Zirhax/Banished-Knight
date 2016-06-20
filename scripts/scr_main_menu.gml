switch(mpos)
{
    case 0:
        room_goto(global.currentLevel);
        break;
    
    case 1:
        room_goto(rm_upgrade);
        break;
    
    case 2:
        room_goto(rm_controls);
        break;
        
    case 3:
        game_end();
        break;
}
