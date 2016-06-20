switch(mpos)
{
    case 0:
        if(global.coins > global.upgradeCostJump)
        {
            global.allowedJumps++;
            global.coins -= global.upgradeCostJump;
            global.upgradeCostJump += 5;
        }
    break;
    
    case 1:
        if(global.coins > global.upgradeCostSpeed)
        {
            global.extSpd += 1;
            global.coins -= global.upgradeCostSpeed;
            global.upgradeCostSpeed++;
        }
    break;
    
    case 2:
        if(global.coins > global.upgradeCostHorSpd)
        {
            global.horSpd += 1;
            global.coins -= global.upgradeCostHorSpd;
            global.upgradeCostHorSpd += 2;
        }
    break;
    
    case 3:
        room_goto(rm_menu);
    break;
}
