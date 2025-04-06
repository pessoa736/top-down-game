var width_ = window_get_width()
var height_ = window_get_height()


var marginx = width_*0.01
var marginy = height_*0.02

x = marginx 
y = -marginy + 3*height_/4

var w = width_/(sprite_width+marginx)
var h = height_/((sprite_height+marginy)*4)

draw_sprite_ext(sprite_index, image_index, x, y, w, h,  image_angle, image_blend, image_alpha)


draw_text(x+7, y+7, sprite_height)