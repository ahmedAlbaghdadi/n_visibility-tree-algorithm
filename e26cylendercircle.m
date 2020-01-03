clc ; 
clear ; 
close all ;
px=10; py=10; pz=10; r=2; qx=1; qy=1; qz=1; n=10;
if rem(n,2)>0
    n=n+1;
end

vx1=real((-sqrt(-4*((qx-px)^2 *(2*qy-2*py)^2/(qz-pz)^4-(4*(qy-py)^2/(qz-pz)^2+4)*((qx-px)^2/(qz-pz)^2+1))*((-(2*qy-2*py)*(qx*(qx-px)+py*(qy-py))/(qz-pz)^2-2*py)^2-(4*(qy-py)^2/(qz-pz)^2+4)*((-qx*(qx-px)-py*(qy-py))^2/(qz-pz)^2+px^2-r^2+py^2))+((8*qx^3+8*qx*px^2-16*px*qx^2+8*px*qy^2-16*py*qy*px+8*py^2*px)/(pz^2-2*qz*pz+qz^2)+8*px)^2)+(-8*qx^3-8*qx*px^2+16*px*qx^2-8*px*qy^2+16*py*qy*px-8*py^2*px)/(pz^2-2*qz*pz+qz^2)-8*px)*(qz-pz)^8/(-(8*(qy-py)^2+8*(qz-pz)^2)*((qz-pz)^2+(qx-px)^2)*(qz-pz)^4+2*(qx-px)^2*(2*qy-2*py)^2*(qz-pz)^4));
vx2=real((-sqrt(-4*((qx-px)^2 *(2*qy-2*py)^2/(qz-pz)^4-(4*(qy-py)^2/(qz-pz)^2+4)*((qx-px)^2/(qz-pz)^2+1))*((-(2*qy-2*py)*(qx*(qx-px)+py*(qy-py))/(qz-pz)^2-2*py)^2-(4*(qy-py)^2/(qz-pz)^2+4)*((-qx*(qx-px)-py*(qy-py))^2/(qz-pz)^2+px^2-r^2+py^2))+((8*qx^3+8*qx*px^2-16*px*qx^2+8*px*qy^2-16*py*qy*px+8*py^2*px)/(pz^2-2*qz*pz+qz^2)+8*px)^2)+(-8*qx^3-8*qx*px^2+16*px*qx^2-8*px*qy^2+16*py*qy*px-8*py^2*px)/(pz^2-2*qz*pz+qz^2)-8*px)*(qz-pz)^8/(-(8*(qy-py)^2+8*(qz-pz)^2)*((qz-pz)^2+(qx-px)^2)*(qz-pz)^4+2*(qx-px)^2*(2*qy-2*py)^2*(qz-pz)^4));
if vx1 >= vx2
    x1 = vx2;
    x2=vx1;
else
    x1 = vx1;
    x2=vx2;
end
x1=x1+0.00001;         %x1 Â–Â «·“Ì«œÂ „‰ «Ã· „‰⁄ «· ﬁ—Ì» «·–Ì ÌÕ’· ›Ì «·„« ·«» ·· 
step = 2*(x2-x1)/n;
x = x1 :  step : x2-step+0.001 ;

y=(-1*(qz-pz).^2*sqrt(-4*((qy-py)^2/(qz-pz).^2+1)*(((qx-px)*(x-qx)-py*(qy-py)).^2/(qz-pz)^2+(x-px).^2-r^2+py.^2)+(2*(qy-py)*((qx-px)*(x-qx)-py*(qy-py))/(qz-pz).^2-2*py).^2)-2*(qy-py)*((qx-px)*(x-qx)-py*(qy-py))+2*py*(qz-pz).^2)/(2*(qy-py).^2+2*(qz-pz).^2);
z=pz-((qx-px)*(x-px)+(qy-py)*(y-py))/(qz-pz);
plot3(x,y,z);
hold on;
xtangent = x;
ytangent = y;
ztangent = z;
step = 2*(x2-x1)/n;
x = x1+step-0.001 :  step : x2 ;
y=(1*(qz-pz).^2*sqrt(-4*((qy-py)^2/(qz-pz).^2+1)*(((qx-px)*(x-qx)-py*(qy-py)).^2/(qz-pz)^2+(x-px).^2-r^2+py.^2)+(2*(qy-py)*((qx-px)*(x-qx)-py*(qy-py))/(qz-pz).^2-2*py).^2)-2*(qy-py)*((qx-px)*(x-qx)-py*(qy-py))+2*py*(qz-pz).^2)/(2*(qy-py).^2+2*(qz-pz).^2);
z=pz-((qx-px)*(x-px)+(qy-py)*(y-py))/(qz-pz);
plot3(x,y,z);
hold on;
xtangentt = [xtangent x];
ytangentt = [ytangent y];
ztangentt = [ztangent z];
points = [xtangentt ; ytangentt ; ztangentt];