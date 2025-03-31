var _dir = keyboard_check(ord("D"));
var _esq = keyboard_check(ord("A"));
var _up = keyboard_check(ord("S"));
var _down = keyboard_check(ord("W"));
var spd = 10; 
moveH = _dir - _esq; 
moveV = _up - _down; 
hspd = moveH * spd; 
vspd = moveV * spd; 
if (place_meeting(x+hspd,y,obj_limiteArea)) {
	while(!place_meeting(x+sign(hspd),y, obj_limiteArea)) {
	x += sign(hspd);
	}; 
	hspd = 0; 
};
if (place_meeting(x,y+vspd,obj_limiteArea)) {
	while(!place_meeting(x,y+sign(vspd), obj_limiteArea)) {
	y += sign(vspd);
	}; 
	vspd = 0; 
};
x += hspd;
y += vspd;