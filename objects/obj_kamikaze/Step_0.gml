/// perilaku kammikaze

if (with_state == true){
	
	//jika player memasuki jarak pandang
	if (distance_to_object(obj_player)<100){
		//state berubah menjadi kejar
		state = "kejar";
	}
	//jika tidak maka state menjadi diam
	else{
		state = "diam";
	}

	//jika player memasuki jangkauan ledak
	if (distance_to_object(obj_player)<45){
		//state berubah menjadi meledak
		state = "meledak";
	}

	//fungsi diam
	if (state == "diam"){
		speed = 0;
	}

	//fungsi mengejar
	if (state == "kejar"){
		//berjalan menuju player
		move_towards_point(obj_player.x,obj_player.y,3);
		//jika player di sisi kiri, maka kamikaze menghadap kiri. vice versa
		if (obj_player.x < x) {image_xscale = -1;}else{image_xscale = 1;}
	}

	//fungsi meledakkan diri
	if (state == "meledak"){
		//kamikaze menciptakan ledakan
		instance_create_layer(x,y,"instances",obj_explode);
		//suara ledakan
		audio_play_sound(snd_ledak,1,false);
		//kemudian kamikaze hancur
		instance_destroy();
	}
}


if (with_state == false){
	//jika player memasuki jangkauan ledak
	if (distance_to_object(obj_player)<45){
		//kamikaze menciptakan ledakan
		instance_create_layer(x,y,"instances",obj_explode);
		//suara ledakan
		audio_play_sound(snd_ledak,1,false);
		//kemudian kamikaze hancur
		instance_destroy();
	}
}