///
#region cotrole

	var left_ = keyboard_check(ord("A"))
	var right_ = keyboard_check(ord("D"))
	var up_ = keyboard_check(ord("W"))
	var down_ = keyboard_check(ord("S"))
	
#endregion controle

#region moviment
	
	hspd = (right_ - left_) * spd
	vspd = (down_-up_) * spd	
	
	if (hspd != 0){ image_xscale = sign(hspd);}
	
	#region colision
	
		if (place_meeting(x+hspd, y, colisao_obj)){
			while (!place_meeting(x+sign(hspd), y, colisao_obj)){
				x+=sign(hspd)
			}
			hspd = 0
		}

		if (place_meeting(x, y+vspd, colisao_obj)){
			while (!place_meeting(x, y+sign(vspd), colisao_obj)){
				y+=sign(vspd)
			}
			vspd = 0
		}

	#endregion colision
	
	x += hspd
	y += vspd

#endregion moviment

