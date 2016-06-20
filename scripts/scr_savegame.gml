//Delete file if it exists
if(file_exists("save.ini"))
{
    file_delete("save.ini");
}
//Open file for reading
ini_open("save.ini");
ini_write_real("Player", "coins", global.coins);

ini_write_real("Score","highscore", highscore_value(1));

ini_write_real("Upgrade", "jumps", global.allowedJumps);
ini_write_real("Upgrade", "speed", global.extSpd);
ini_write_real("Upgrade", "horSpd", global.horSpd);
ini_write_real("Upgrade", "jumpCost", global.upgradeCostJump);
ini_write_real("Upgrade", "speedCost", global.upgradeCostSpeed);
ini_write_real("Upgrade", "horSpdCost", global.upgradeCostHorSpd);

ini_write_real("Level", "currentLevel", global.currentLevel);
ini_close();
