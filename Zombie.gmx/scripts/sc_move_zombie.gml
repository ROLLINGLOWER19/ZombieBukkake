//sc_move_zombie

/// Mouvement vers le personnage joueur
var dir = point_direction (x, y, joueurx, joueury);
var hspd = lengthdir_x (spd, dir);
var vspd = lengthdir_y (spd, dir);
phy_position_x += hspd;
phy_position_y += vspd;
