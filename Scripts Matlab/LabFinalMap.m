clear all;
clc;

%% LABORATORIO Final
% Fundamentos de Robótica Móvil

%% Creación del Mapa 
Resolution= 20;
Map= binaryOccupancyMap(19,19,Resolution);% Creación del Mapa

%% Relleno - Parte de arriba
LHor1_Initx=0;
LHor1_Inity=17;
LHor1_Endx=14;
LHor1_Points= (LHor1_Endx-LHor1_Initx)*Resolution;
LHor1_x(1)=LHor1_Initx;

for j=1:0.5/(1/Resolution)+1
  LHor1_y(1)=LHor1_Inity;
for n=1:LHor1_Points
    LHor1_x(n+1)=LHor1_x(n)+1/Resolution;
    LHor1_y(n+1)=LHor1_y(n);
    
end
setOccupancy(Map,[LHor1_x' LHor1_y'], ones(length(LHor1_x),1))
LHor1_Inity=LHor1_Inity+1/Resolution;
end

%% Relleno - Parte de abajo
LHor1_Initx=5;
LHor1_Inity=1.2;
LHor1_Endx=19;
LHor1_Points= (LHor1_Endx-LHor1_Initx)*Resolution;
LHor1_x(1)=LHor1_Initx;

for j=1:0.5/(1/Resolution)+1
  LHor1_y(1)=LHor1_Inity;
for n=1:LHor1_Points
    LHor1_x(n+1)=LHor1_x(n)+1/Resolution;
    LHor1_y(n+1)=LHor1_y(n);
    
end
setOccupancy(Map,[LHor1_x' LHor1_y'], ones(length(LHor1_x),1))
LHor1_Inity=LHor1_Inity+1/Resolution;
end


%% Creación Obstáculos Circulares
x= [7;15];
y= [6.5;11];

setOccupancy(Map,[x y], ones(2,1))

inflate(Map,0.75)

x= [4.25];
y= [12.5];

setOccupancy(Map,[x y], ones(1,1))

inflate(Map,0.75)

 %% Creación del marco 
 % Lineas horizontales
 
LHor1_Initx=0;
LHor1_Inity=0;
LHor1_Endx=4;
LHor1_Points= (LHor1_Endx-LHor1_Initx)*Resolution;
LHor1_x(1)=LHor1_Initx;

for j=1:0.5/(1/Resolution)+1
  LHor1_y(1)=LHor1_Inity;
for n=1:LHor1_Points
    LHor1_x(n+1)=LHor1_x(n)+1/Resolution;
    LHor1_y(n+1)=LHor1_y(n);
    
end
setOccupancy(Map,[LHor1_x' LHor1_y'], ones(length(LHor1_x),1))
LHor1_Inity=LHor1_Inity+1/Resolution;
end


LHor2_Initx=3.5;
LHor2_Inity=3;
LHor2_Endx=19;
LHor2_Points= (LHor2_Endx-LHor2_Initx)*Resolution;
LHor2_x(1)=LHor2_Initx;

for j=1:0.5/(1/Resolution)+1
  LHor2_y(1)=LHor2_Inity;
for n=1:LHor2_Points
    LHor2_x(n+1)=LHor2_x(n)+1/Resolution;
    LHor2_y(n+1)=LHor2_y(n);
    
end
setOccupancy(Map,[LHor2_x' LHor2_y'], ones(length(LHor2_x),1))
LHor2_Inity=LHor2_Inity+1/Resolution;
end

LHor3_Initx=0;
LHor3_Inity=15.5;
LHor3_Endx=19-3.5;
LHor3_Points= (LHor3_Endx-LHor3_Initx)*Resolution;
LHor3_x(1)=LHor3_Initx;

for j=1:0.5/(1/Resolution)+1
  LHor3_y(1)=LHor3_Inity;
for n=1:LHor3_Points
    LHor3_x(n+1)=LHor3_x(n)+1/Resolution;
    LHor3_y(n+1)=LHor3_y(n);
    
end
setOccupancy(Map,[LHor3_x' LHor3_y'], ones(length(LHor3_x),1))
LHor3_Inity=LHor3_Inity+1/Resolution;
end

LHor4_Initx=19-4;
LHor4_Inity=18.5;
LHor4_Endx=19;
LHor4_Points= (LHor4_Endx-LHor4_Initx)*Resolution;
LHor4_x(1)=LHor4_Initx;

for j=1:0.5/(1/Resolution)+1
  LHor4_y(1)=LHor4_Inity;
for n=1:LHor4_Points
    LHor4_x(n+1)=LHor4_x(n)+1/Resolution
    LHor4_y(n+1)=LHor4_y(n);
    
end

setOccupancy(Map,[LHor4_x' LHor4_y'], ones(length(LHor4_x),1))
LHor4_Inity=LHor4_Inity+1/Resolution;
end

% Crear Marco Lineas Verticales
LVer1_Inity=0;
LVer1_Initx=0;
LVer1_Endy=16;
LVer1_Points= (LVer1_Endy-LVer1_Inity)*Resolution;
LVer1_y(1)=LVer1_Inity;

for j=1:0.5/(1/Resolution)+1
  LVer1_x(1)=LVer1_Initx;
for n=1:LVer1_Points
    LVer1_y(n+1)=LVer1_y(n)+1/Resolution
    LVer1_x(n+1)=LVer1_x(n);
    
end

setOccupancy(Map,[LVer1_x' LVer1_y'], ones(length(LVer1_y),1))
LVer1_Initx=LVer1_Initx+1/Resolution;
end

LVer2_Inity=0;
LVer2_Initx=3.5;
LVer2_Endy=3.5;
LVer2_Points= (LVer2_Endy-LVer2_Inity)*Resolution;
LVer2_y(1)=LVer2_Inity;

for j=1:0.5/(1/Resolution)+1
  LVer2_x(1)=LVer2_Initx;
for n=1:LVer2_Points
    LVer2_y(n+1)=LVer2_y(n)+1/Resolution
    LVer2_x(n+1)=LVer2_x(n);
    
end

setOccupancy(Map,[LVer2_x' LVer2_y'], ones(length(LVer2_y),1))
LVer2_Initx=LVer2_Initx+1/Resolution;
end

LVer3_Inity=15.5;
LVer3_Initx=15;
LVer3_Endy=19;
LVer3_Points= (LVer3_Endy-LVer3_Inity)*Resolution;
LVer3_y(1)=LVer3_Inity;

for j=1:0.5/(1/Resolution)+1
  LVer3_x(1)=LVer3_Initx;
for n=1:LVer3_Points
    LVer3_y(n+1)=LVer3_y(n)+1/Resolution
    LVer3_x(n+1)=LVer3_x(n);
    
end

setOccupancy(Map,[LVer3_x' LVer3_y'], ones(length(LVer3_y),1))
LVer3_Initx=LVer3_Initx+1/Resolution;
end

LVer4_Inity=3;
LVer4_Initx=18.5;
LVer4_Endy=19;
LVer4_Points= (LVer4_Endy-LVer4_Inity)*Resolution;
LVer4_y(1)=LVer4_Inity;

for j=1:0.5/(1/Resolution)+1
  LVer4_x(1)=LVer4_Initx;
for n=1:LVer4_Points
    LVer4_y(n+1)=LVer4_y(n)+1/Resolution
    LVer4_x(n+1)=LVer4_x(n);
    
end

setOccupancy(Map,[LVer4_x' LVer4_y'], ones(length(LVer4_y),1))
LVer4_Initx=LVer4_Initx+1/Resolution;
end

%% Creación de Obstáculos No Convexos. 
LVer5_Inity=5.5;
LVer5_Initx=3;
LVer5_Endy=10.5;
LVer5_Points= (LVer5_Endy-LVer5_Inity)*Resolution;
LVer5_y(1)=LVer5_Inity;

for j=1:0.5/(1/Resolution)+1
  LVer5_x(1)=LVer5_Initx;
for n=1:LVer5_Points
    LVer5_y(n+1)=LVer5_y(n)+1/Resolution
    LVer5_x(n+1)=LVer5_x(n);
    
end

setOccupancy(Map,[LVer5_x' LVer5_y'], ones(length(LVer5_y),1))
LVer5_Initx=LVer5_Initx+1/Resolution;
end

LVer6_Inity=10.5;
LVer6_Initx=11;
LVer6_Endy=15.5;
LVer6_Points= (LVer6_Endy-LVer6_Inity)*Resolution;
LVer6_y(1)=LVer6_Inity;

for j=1:0.5/(1/Resolution)+1
  LVer6_x(1)=LVer6_Initx;
for n=1:LVer6_Points
    LVer6_y(n+1)=LVer6_y(n)+1/Resolution;
    LVer6_x(n+1)=LVer6_x(n);
    
end

setOccupancy(Map,[LVer6_x' LVer6_y'], ones(length(LVer6_y),1))
LVer6_Initx=LVer6_Initx+1/Resolution;
end

LVer7_Inity=5;
LVer7_Initx=15.5;
LVer7_Endy=8;
LVer7_Points= (LVer7_Endy-LVer7_Inity)*Resolution;
LVer7_y(1)=LVer7_Inity;

for j=1:0.5/(1/Resolution)+1
  LVer7_x(1)=LVer7_Initx;
for n=1:LVer7_Points
    LVer7_y(n+1)=LVer7_y(n)+1/Resolution;
    LVer7_x(n+1)=LVer7_x(n);
    
end

setOccupancy(Map,[LVer7_x' LVer7_y'], ones(length(LVer7_y),1))
LVer7_Initx=LVer7_Initx+1/Resolution;
end

LHor5_Initx=3;
LHor5_Inity=10;
LHor5_Endx=7;
LHor5_Points= (LHor5_Endx-LHor5_Initx)*Resolution;
LHor5_x(1)=LHor5_Initx;

for j=1:0.5/(1/Resolution)+1
  LHor5_y(1)=LHor5_Inity;
for n=1:LHor5_Points
    LHor5_x(n+1)=LHor5_x(n)+1/Resolution;
    LHor5_y(n+1)=LHor5_y(n);
    
end

setOccupancy(Map,[LHor5_x' LHor5_y'], ones(length(LHor5_x),1))
LHor5_Inity=LHor5_Inity+1/Resolution;
end

LHor6_Initx=10.5;
LHor6_Inity=7.5;
LHor6_Endx=15.5;
LHor6_Points= (LHor6_Endx-LHor6_Initx)*Resolution;
LHor6_x(1)=LHor6_Initx;

for j=1:0.5/(1/Resolution)+1
  LHor6_y(1)=LHor6_Inity;
for n=1:LHor6_Points
    LHor6_x(n+1)=LHor6_x(n)+1/Resolution;
    LHor6_y(n+1)=LHor6_y(n);
    
end

setOccupancy(Map,[LHor6_x' LHor6_y'], ones(length(LHor6_x),1))
LHor6_Inity=LHor6_Inity+1/Resolution;
end

figure(2)
show(Map)
inflate(Map,0.2)

%% Generación de trayectoria

% Mapa inflado
figure(3)
show(Map)
hold on;

% PRM - Probabilistic Roadmap
prm = mobileRobotPRM(Map,250); 
show(prm)

% Punto inicial y final
startLocation = [2 2];
endLocation = [17 17]; 

% Ruta encontrada
path = findpath(prm,startLocation,endLocation);
show(prm)


% inflate(Map,0.4)
% m2 = occupancyMatrix(Map);
% m2=m2';
% 
% for i=1 :200
%     for j=1:200
%         m(i,j)=m2(i,(201-j));
%     end
% end
% m=m';

