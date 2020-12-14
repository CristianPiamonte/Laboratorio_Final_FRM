% DIBROB programa que dibuja un robot circular en 2D, 
% dadas las coordenadas del centro, �ngulo de orientaci�n y radio.
%Ricardo Ram�rez, UNiversidad Nacional de Colombia, 2011.
function []=dibrob(xc,yc,r,theta)
tc=0:pi/8:2*pi;
x=[xc xc+r*cos(tc+theta)];
y=[yc yc+r*sin(tc+theta)];
plot(x,y)
