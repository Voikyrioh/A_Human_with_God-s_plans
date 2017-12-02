// DÉPLACEMENT

var mv_spd = 2;

//Déplacement à droite

if(keyboard_check(vk_right))
{
    phy_position_x += mv_spd;
    image_speed = 1;
}


//Déplacement à gauche

if(keyboard_check(vk_left))
{
    phy_position_x -= mv_spd;
}


//Saut

if (!place_free(x,y+3))
{
    if(keyboard_check(vk_up))
    {
        jumping = true;
        gravity = 0;
        physics_apply_local_impulse(x, y, 0, -10);
    }
}
else
{
    jumping = false;
}



while(phy_speed_x != 0 && (keyboard_check(vk_up) || (keyboard_check(vk_down))))
{
    image_speed = 1;
    running = true;
}

if (!is_undefined(running))
{
    if (!running)
    {
        image_index = 0;
        image_speed = 0;
    }
}

if (jumping)
{
    image_speed = 0;
    image_index = 1;
}

gravity = 1;

/*
if(keyboard_check(vk_up))
    {
        gravity = 0;
        physics_apply_local_impulse(x, y, 0, -5);
    }
    
     if(keyboard_check(vk_down))
    {
        gravity = 0;
        physics_apply_local_impulse(x, y, 0, 20);
    }
gravity = 1;
