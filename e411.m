clc ; 
clear ; 
close all ;
global alllist;
alllist=[];
global points;
type = -1; 
px=-10; py=-10; pz=-10; fx=60; fy=60; fz=60; n=4;
sphers = [8 7 5 10; 35 35 40 5];
% sphers = plotsphers(25,10,12,1,50);
points=[px py pz ; fx fy fz];
ids1=0; ids2=0;
rec(px,py,pz,type,ids1,ids2,sphers ,fx,fy,fz,n);
alllines=size(alllist);
numberofraw=alllines(1);
for f=1:numberofraw
    if alllist(f,7)==0
        drawline(alllist(f,1),alllist(f,2),alllist(f,3),alllist(f,4),alllist(f,5),alllist(f,6))
    else
        sure=connectt(sphers(alllist(f,7),1),sphers(alllist(f,7),2),sphers(alllist(f,7),3),sphers(alllist(f,7),4),alllist(f,1),alllist(f,2),alllist(f,3),alllist(f,4),alllist(f,5),alllist(f,6));
    end
end

po=size(alllist);
numb=po(1);
for k=1:numb
pp=size(points);
nop=pp(1);
    found = 1;
    for steppoint =1 :nop
       if abs(points(steppoint , 1)-alllist(k,1))<0.001 && abs(points(steppoint , 2)-alllist(k,2))<0.001 &&  abs(points(steppoint , 3)-alllist(k,3))<0.001 
           found = 0;
       end
    end
    if found ==1
        points(nop+1 , 1) = alllist(k,1);
        points(nop+1 , 2) = alllist(k,2);
        points(nop+1 , 3) = alllist(k,3);
        points(nop+1 , 4) = alllist(k,7);
    end
end

t=[]; s=[];w=[];


po=size(alllist);
numb=po(1);
steper=1;
for step = 1 : numb
    s1 = pointtoid(alllist(step , 1),alllist(step , 2),alllist(step , 3));
    t1 = pointtoid(alllist(step , 4),alllist(step , 5),alllist(step , 6));
    w1= dis(alllist(step , 1),alllist(step , 2),alllist(step , 3) ,alllist(step , 4),alllist(step , 5),alllist(step , 6));  
        s(steper)= s1;
        t(steper) = t1;
        w(steper)= w1;
        steper = steper+1;
end

s1=[];
t1=[];
w1=[];
mysize=size(s);
for i=1:mysize(2)
    found=0;
   for j = i+1 :mysize(2)
       if (s(i) == s(j) && t(i)==t(j)) ||  (s(i) == t(j) && t(i)==s(j)) 
            found=1;
       end

   end
   if s(i)== t(i)
       found=1;
   end
   if found==0
       s1 = [s1 , s(i) ];
       t1 = [t1 , t(i) ];
       w1 = [w1 , w(i) ];

   end
end


G = graph(s1,t1,w1);
% plot(G,'EdgeLabel',G.Edges.Weight);
[P,d] = shortestpath(G,1,2);

myp = size(P);
for i=1 :myp(2)-1
 if mod(i , 2) ==0

    myconnect = connectt(sphers(points(P(i) , 4) , 1) , sphers(points(P(i) , 4) , 2) , sphers(points(P(i) , 4) , 3) , sphers(points(P(i) , 4) , 4) , points(P(i) , 1)+40 ,  points(P(i) , 2) ,  points(P(i) , 3) , points(P(i+1) , 1)+40 ,  points(P(i+1) , 2) ,  points(P(i+1) , 3));
 else
     drawline(points(P(i) , 1)+40 ,  points(P(i) , 2) ,  points(P(i) , 3) , points(P(i+1) , 1)+40 ,  points(P(i+1) , 2) ,  points(P(i+1) , 3));
     
 end
end




% a=size(sphers);
% for i=1:a(1)
% px=sphers(i,1); py=sphers(i,2); pz=sphers(i,3); r=sphers(i,4);
% 
% q=0 : pi/50 : 2*pi;
% w = 0 : pi/50 : 2*pi;
% [q,w]=meshgrid(q,w);
% x= px+r*sin(q).*cos(w);
% y= py+r*sin(q).*sin(w);
% z = pz+r*cos (q);
% surf(x,y,z);
% hold on ;
% end
% 
% xlabel ('x-axis');
% ylabel ('y-axis');
% zlabel ('z-axis');