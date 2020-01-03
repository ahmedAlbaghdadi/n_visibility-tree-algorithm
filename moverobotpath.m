function check = moverobotpath( px, py, pz, qx , qy , qz , r)
% „œŒ·« Â« ‰ﬁÿÂ »œ«ÌÂ Ê‰ﬁÿÂ ‰Â«ÌÂ Ê ﬁÊ„ «·œ«·Â »—”„ Œÿ „” ﬁÌ„ »Ì‰Â„« —Ê»Ê 
global sphers;
global lengthofpath;
lengthofpath = lengthofpath+ dis( px, py, pz, qx , qy , qz);

% t =linspace (0,1);
t=0:0.001:1;
x1= px+(qx-px).*t;
y1=py+(qy-py).*t;
z1= pz+(qz-pz).*t; 
plotsphersonly (sphers);
 hold on;
for i=1:50:1000

%  q=0 : pi/50 : 2*pi;
%     w = 0 : pi/50 : 2*pi;
%     [q,w]=meshgrid(q,w);
%     x= x1(i)+r*sin(q).*cos(w);
%     y= y1(i)+r*sin(q).*sin(w);
%     z = z1(i)+r*cos (q);
    DrawQuad( x1(i), y1(i), z1(i), r , 'r' , 'b');
%     surf(x,y,z);
    pause(0.00000001);
%   hold off ;
end
check=[x1 ; y1 ; z1];
end 