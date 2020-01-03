clc ; 
clear ; 
close all ;
m = 50; tryerror= 10; maxr=5; minr=0.5; space=50;
ma=[];
for  c = 1:m
    found = 0;
    count = 0;
    while found == 0 && count <=tryerror
        count  = count +1;
        found = 1;
        r1 = round(space*rand(1,3)); 
        r2 = round(maxr*rand(1,1),2);
        if r2<=minr
            r2=1;
        end
        r=[r1 r2];
        s = size(ma);
        for i = 1: s(1)
            row =  ma(i, :);
            if check(r(1), r(2) , r(3) , r(4) , row(1) , row(2) , row(3) , row(4)) == 0
                found =0;
            end
        end
    end
    if count<=tryerror +1
        ma=[ma ; r];  
    else
      return;
    end
    
end
a=size(ma);
for i=1:a(1)
px=ma(i,1); py=ma(i,2); pz=ma(i,3); r=ma(i,4);

q=0 : pi/50 : 2*pi;
w = 0 : pi/50 : 2*pi;
[q,w]=meshgrid(q,w);
x= px+r*sin(q).*cos(w);
y= py+r*sin(q).*sin(w);
z = pz+r*cos (q);
surf(x,y,z);
hold on ;
end

a=size(ma);
for i=1:a(1)
   ma(i,4)= ma(i,4)+1
end

xlabel ('x-axis');
ylabel ('y-axis');
zlabel ('z-axis');