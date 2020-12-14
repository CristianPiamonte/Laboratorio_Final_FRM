% DIBROB programa que dibuja un robot circular en 2D, 
% dadas las coordenadas del centro, ángulo de orientación y radio.
%Ricardo Ramírez, UNiversidad Nacional de Colombia, 2011.
function []=dibrob(xc,yc,r,theta)
tc=0:pi/8:2*pi;
x=[xc xc+r*cos(tc+theta)];
y=[yc yc+r*sin(tc+theta)];
plot(x,y)
