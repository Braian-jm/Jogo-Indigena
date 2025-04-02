var _dir = keyboard_check(ord("D"));
var _esq = keyboard_check(ord("A"));
var _up = keyboard_check(ord("S"));
var _down = keyboard_check(ord("W"));
var spd = 3; 
moveH = _dir - _esq; 
moveV = _up - _down; 
hspd = moveH * spd; 
vspd = moveV * spd; 
if (place_meeting(x+hspd,y,obj_colisao)) {
	while(!place_meeting(x+sign(hspd),y, obj_colisao)) {
	x += sign(hspd);
	}; 
	hspd = 0; 
};
if (place_meeting(x,y+vspd,obj_colisao)) {
	while(!place_meeting(x,y+sign(vspd), obj_colisao)) {
	y += sign(vspd);
	}; 
	vspd = 0; 
};
x += hspd;
y += vspd;

if (sign(vspd) == 1) {
sprite_index = 	spr_playerParaFrente;
} else if (sign(vspd) == -1) {
sprite_index = spr_playerParaTras; 
} 
if (sign(hspd) == 1) {
sprite_index = 	spr_playerParaDireita;
} else if (sign(hspd) == -1) {
sprite_index = spr_playerParaEsquerda;
} 
if (hspd == 0 && vspd == 0) {
	sprite_index = spr_playerParado; 
}