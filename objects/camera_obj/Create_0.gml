var w_aspect = window_get_height()/window_get_width()

size_ = 2200

camera_apply(view_camera[0])
view_camera[0] = camera_create_view(x, y, size_, size_*w_aspect, 0, player_obj)

width = camera_get_view_width(view_camera[0])
heigth = camera_get_view_height(view_camera[0])