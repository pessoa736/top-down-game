if (visivel && indice < array_length(textos)) {
    if (caracteres_visiveis < string_length(textos[indice])) {
        caracteres_visiveis += text_speed;
    }
    if (keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("E"))) {
        if (caracteres_visiveis < string_length(textos[indice])) {
            caracteres_visiveis = string_length(textos[indice]);
        } else {
            if (indice < array_length(textos) - 1) {
                indice += 1;
                caracteres_visiveis = 0;
            } else {
                visivel = false;
            }
        }
    }
}