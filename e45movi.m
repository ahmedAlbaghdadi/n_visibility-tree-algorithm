clc ; 
clear ; 
close all ;
    


          view([-100,-100,-100]);

     
for i=1:0.1:20
q=0 : pi/50 : 2*pi;
    w = 0 : pi/50 : 2*pi;
    [q,w]=meshgrid(q,w);
    x1= 30+4*sin(q).*cos(w);
    y1= 30+4*sin(q).*sin(w);
    z1 = 30+4*cos (q);
   surf(x1,y1,z1);
     hold on ;
xlabel ('x-axis');
ylabel ('y-axis');
zlabel ('z-axis');
 
    
    
    q=0 : pi/50 : 2*pi;
    w = 0 : pi/50 : 2*pi;
    [q,w]=meshgrid(q,w);
    x= i+1*sin(q).*cos(w);
    y= i+1*sin(q).*sin(w);
    z = i+1*cos (q);
    surf(x,y,z);
    pause(0.01);
%     view ([floor(x(i)) floor(y(i)) floor(z(i))]);
  
     hold off;
     
     
     
end

% a=size(sphers);
% for i=1:a(1)
% px=sphers(i,1); py=sphers(i,2); pz=sphers(i,3); r=sphers(i,4);
% 
% q=0 : pi/50 : 2*pi;
% w = 0 : pi/50 : 2*pi;
% [q,w]=meshgrid(q,w);
% x= 30+4*sin(q).*cos(w);
% y= 30+4*sin(q).*sin(w);
% z = 30+4*cos (q);
% surf(x,y,z);
% hold on ;
% end
% xlabel ('x-axis');
% ylabel ('y-axis');
% zlabel ('z-axis');
