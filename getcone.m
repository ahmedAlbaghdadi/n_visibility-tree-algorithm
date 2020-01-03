function [c] = getcone( px, py, pz, r1, qx , qy , qz ,r2, n)
% ãÏÎáÇÊåÇ ãÑßÒ æäÕÝ ÞØÑ ÇáßÑå ÇáÇæáì Ëã ãÑßÒ æäÕÝ ÞØÑ ÇáßÑå ÇáËÇäíå Ëã ÚÏÏ
% ÇáäÞÇØ ÇáãØáæÈ ÍÓÇÈåÇ Ýí ßá Ìåå ÇãÇ ãÎÑÌÇÊåÇ Ýåí ãÕÝæÝå ãßæäå ãä 6 ÕÝæÝ æ
% n ãä ÇáÇÚãÏå ÍíË Çæá 3 ÕÝæÝ ÊãËá ÇáäÞÇØ ãä Ìåå ÇáßÑå ÇáÇæáì ÇãÇ ËÇäí ËáÇË
% ÕÝæÝ ÊãËá ÇáäÞÇØ ãä Ìåå ÇáßÑå ÇáËÇäíå
if r1==r2
    r=r1;
    c1=cyl1(px,py,pz,r,qx,qy,qz,n);
    c2=cyl1(qx,qy,qz,r,px,py,pz,n);
    c=[c1 ; c2];
elseif r1>r2
    t1=px; t2=py; t3=pz; t4=r1;
    px=qx; py=qy; pz=qz; r1=r2;
    qx=t1; qy=t2; qz=t3; r2=t4;
    d2=sqrt((px-qx)^2+(py-qy)^2+(pz-qz)^2);
d1=r1*d2/(r2-r1);
a=px+d1*(px-qx)/d2;
b=py+d1*(py-qy)/d2;
c=pz+d1*(pz-qz)/d2;
f1=get_points(px,py,pz,r1,a,b,c,n);
f2=get_points(qx,qy,qz,r2,a,b,c,n);
c=[f2;f1];
else 
    d2=sqrt((px-qx)^2+(py-qy)^2+(pz-qz)^2);
d1=r1*d2/(r2-r1);
a=px+d1*(px-qx)/d2;
b=py+d1*(py-qy)/d2;
c=pz+d1*(pz-qz)/d2;
f1=get_points(px,py,pz,r1,a,b,c,n);
f2=get_points(qx,qy,qz,r2,a,b,c,n);
c=[f1;f2];
end
end

