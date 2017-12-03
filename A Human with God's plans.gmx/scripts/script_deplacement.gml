// DÉPLACEMENT
var mv_spd = 2;
gravity = 1;

//Déplacement à droite
if(keyboard_check(vk_right))
{
    running = true;
    sprite_index = spr_player_right;
    phy_position_x += mv_spd;
    if (!jumping)
    {
        image_speed = 0.3;
    }
}

//Déplacement à gauche
if(keyboard_check(vk_left))
{
    running = true;
    sprite_index = spr_player_left;
    phy_position_x -= mv_spd;
    if (!jumping)
    {
        image_speed = 0.3;
    }
}


//Saut
if (!place_free(x,y+3))
{
    if(keyboard_check(vk_up))
    {
        jumping = true;
        gravity = 0;
        physics_apply_local_impulse(x, y, 0, -10);
        //sauter a gauche
        if (sprite_index == spr_player_left)
        {
            sprite_index = spr_player_flying_left;
        }
        //sauter a droite       
        if (sprite_index == spr_player_right)
        {
            sprite_index = spr_player_flying_right;
        }
    }
}
else
{
    jumping = false;
}

// Idle = image 0
if(!keyboard_check(vk_left) && !keyboard_check(vk_right) && !jumping) 
{
    running = false;
    image_speed = 0;
    image_index = 0;
}
else // en l'air = image saut
{    
    if (jumping)
    {
        image_speed = 0;
        image_index = 1;
    }
}

gravity = 1;


//pas sortir a gauche et a droite

if (phy_position_x <= 5)
{
    phy_position_x = 5;
}


//Sortir en bas
if (phy_position_y > room_height)
{
    dead = true;
}

