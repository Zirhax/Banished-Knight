if(file_exists("save.ini"))
{
    ini_open("save.ini");
    global.coins = ini_read_real("Player", "coins", 0);
    
    highscore_add("Leader", ini_read_real("Score", "highscore", 0));
    
    global.allowedJumps = ini_read_real("Upgrade", "jumps", 1);
    global.extSpd = ini_read_real("Upgrade", "speed", 0);
    global.horSpd = ini_read_real("Upgrade", "horSpd", 2);
    global.upgradeCostJump = ini_read_real("Upgrade", "jumpCost", 10);
    global.upgradeCostSpeed = ini_read_real("Upgrade", "speedCost", 1);
    global.upgradeCostHorSpd = ini_read_real("Upgrade", "horSpdCost", 5);
    global.currentLevel = ini_read_real("Level", "currentLevel", rm_level1);
    ini_close();
}
