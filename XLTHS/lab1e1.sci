clc;
clear;
close;

vec_x = 1:1:4;
vec_x_plus = vec_x + 1;

vec_y = 5:1:8;
vec_xy = vec_x .* vec_y;

val_x = linspace(0, %pi, 10);
val_sin = sin(val_x);
