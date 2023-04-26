/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

    drag = true;
    var _xx = event_data[?"posX"];
    var _yy = event_data[?"posY"];
    drag_x = x;
    drag_y = y;
    drag_offset_x = drag_x - _xx;
    drag_offset_y = drag_y - _yy;
audio_play_sound(sndPop1,1,0)