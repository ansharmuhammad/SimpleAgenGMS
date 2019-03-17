/// @description Insert description here
// You can write your code in this editor

//mengubah opacity
draw_set_alpha(0.2);

//jangkauan ledak
draw_set_colour(c_white);
draw_circle(x, y, 45, false);

if (with_state == true){
	//jarak pandang
	draw_set_colour(c_red);
	draw_circle(x, y, 100, false);
}

//gambar diri sendiri
draw_set_alpha(1);
draw_self();

//tulisan kamikaze
draw_set_colour(c_red);
draw_set_halign(fa_center);
draw_text_transformed(x, y-16, "kamikaze", 0.5, 0.5, image_angle);