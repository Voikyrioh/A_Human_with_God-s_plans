if(view_enabled)
{
    txtbox_x1 = view_xview[0] + (view_xview[0]+32);
    txtbox_y1 = view_yview[0] + (8);
    txtbox_x2 = view_xview[0] + (view_wview[0]-32);
    txtbox_y2 = view_yview[0] + (64);
}

else
{
    txtbox_x1 = (32);
    txtbox_y1 = (8);
    txtbox_x2 = (room_width-32);
    txtbox_y2 = (64);
}

draw_rectangle_colour(txtbox_x1-1,txtbox_y1-1,txtbox_x2+1,txtbox_y2+1,c_black,c_black,c_black,c_black,true);
draw_rectangle_colour(txtbox_x1,txtbox_y1,txtbox_x2,txtbox_y2,c_dkgray,c_dkgray,c_dkgray,c_dkgray,false);

// draw textlines

draw_set_font(ft_god);
draw_text(txtbox_x1+6,txtbox_y1+6,argument0);
draw_text(txtbox_x1+6,txtbox_y1+24,argument1);
draw_text(txtbox_x1+6,txtbox_y1+42,argument2);
draw_text(txtbox_x1+6,txtbox_y1+60,argument3);
draw_text(txtbox_x1+6,txtbox_y1+78,argument4);
