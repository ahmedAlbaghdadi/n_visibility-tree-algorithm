function check = DrawQuad( x, y, z, r , cs1 , cs2)

l=0.4;
% «·–—«⁄ «ﬂ”
 x1= [x-r x+r];
 y1= [y y];
 z1= [z z];
% cs = 'b' ;
n = 3 ;
plot3(x1,y1,z1,'color',cs1,'linewidth',n);
hold on
% «·–—«⁄ Ê«Ì
 x2= [x x];
 y2= [y-r y+r];
 z2= [z z];

plot3(x2,y2,z2,'color',cs1,'linewidth',n);
hold on
% «·„—ÊÕÂ «·Ì„‰Ï
 x3= [x+r x+r];
 y3= [y-l y+l];
 z3= [z z];
%  cs = 'r' ;
n = 2 ;
plot3(x3,y3,z3,'color',cs2,'linewidth',n);
hold on
% «·„—ÊÕÂ «·Ì”—Ï
 x4= [x-r x-r];
 y4= [y-l y+l];
 z4= [z z];

plot3(x4,y4,z4,'color',cs2,'linewidth',n);
hold on
% «·„—ÊÕÂ «·›Êﬁ
 x5= [x-l x+l];
 y5= [y+r y+r];
 z5= [z z];

plot3(x5,y5,z5,'color',cs2,'linewidth',n);
hold on
% «·„—ÊÕÂ «· Õ 
 x6= [x-l x+l];
 y6= [y-r y-r];
 z6= [z z];

plot3(x6,y6,z6,'color',cs2,'linewidth',n);
hold on
check=0;

end 