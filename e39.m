clc ; 
clear ; 
close all ;
px=0; py=0; pz=0; qx=10;  qy=0; qz=0; cx=-1;  cy=0; cz=0; r=1;
   c= [0 0 0 0];
for t=0:0.001:1
x= px+(qx-px).*t;
y=py+(qy-py).*t;
z= pz+(qz-pz).*t;
diste = dis(x,y,z,cx,cy,cz);
if diste<r
    c=[cx cy cz r];
end
end
