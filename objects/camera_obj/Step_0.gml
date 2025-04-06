
x = lerp(x, player_obj.x-width/2, 0.1)
y = lerp(y, player_obj.y-heigth/2, 0.1)

camera_set_view_pos(view_camera[0], x, y)
