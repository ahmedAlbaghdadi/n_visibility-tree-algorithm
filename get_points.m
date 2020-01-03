function [points] = get_points(cx, cy ,cz, r, vx, vy, vz, n)
% „œŒ·« Â« „—ﬂ“ Ê‰’› ﬁÿ— «·ﬂ—Â Ê«·‰ﬁÿÂ «·Œ«—ÃÌÂ Ê⁄œœ «·‰ﬁ«ÿ «Ê «·ŒÿÊÿ
% «·„ÿ·Ê»Â Ê„Œ—Ã« Â« „’›Ê›Â  Õ ÊÌ ⁄·Ï À·«À ’›Ê› Ê n „‰ «·«⁄„œÂ Â–Â «·‰ﬁ«ÿ
%  „À· ‰ﬁ«ÿ «·œ«∆—Â «·„—∆ÌÂ „‰ ﬁ»· «·‰ﬁÿÂ «·Œ«—ÃÌÂ »œÊ‰ «Ì ÕÊ«Ã“ ›Ì «·ÿ—Ìﬁ
de=((cx-vx)^2 + (cy-vy)^2 + (cz-vz)^2)^0.5;
a=2*vx-2*cx; b= 2*vy - 2*cy; c= 2*vz - 2*cz; d=cx^2 +cy^2 + cz^2 -vx^2 - vy^2 -vz^2 -2*r^2 +de^2;
if c == 0
    c=0.001;
end
if rem(n,2)>0
    n=n+1;
end
vx1=-(-sqrt(4*((4*a^2+4*b^2)/c^2+4)*(-(4*b^2/c^2+4)*(cy^2+cz^2-r^2+(2*c*d*cz+d^2)/c^2+cx^2)+((2*b*c*cz+2*b*d)/c^2-2*cy)^2)+((-8*a*b*cy-8*a*c*cz+8*cx*b^2-8*a*d)/c^2+8*cx)^2)*c^2+8*a*b*cy+8*a*c*cz-8*cx*b^2-8*cx*c^2+8*a*d)/(8*a^2+8*b^2+8*c^2);
vx2=-(sqrt(4*((4*a^2+4*b^2)/c^2+4)*(-(4*b^2/c^2+4)*(cy^2+cz^2-r^2+(2*c*d*cz+d^2)/c^2+cx^2)+((2*b*c*cz+2*b*d)/c^2-2*cy)^2)+((-8*a*b*cy-8*a*c*cz+8*cx*b^2-8*a*d)/c^2+8*cx)^2)*c^2+8*a*b*cy+8*a*c*cz-8*cx*b^2-8*cx*c^2+8*a*d)/(8*a^2+8*b^2+8*c^2);
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
y=(2*cy-(2*a*b.*x + 2*d*b +2*b*c*cz)./(c^2)+((-2*cy+(2*a*b.*x+2*d*b+2*b*c*cz)./(c^2)).^2-4*(1+b^2/c^2).*(x.^2 -2*cx.*x+cx^2+cy^2+ a^2.*x.^2./c^2 + 2*a*d.*x./c^2 +d^2/c^2 + 2*a*cz.*x./c + 2*cz*d/c +cz^2 -r^2)).^0.5)/(2+2*b^2/c^2);
z=-1/c *(a.*x + b.*y +d);
xtangent = x;
ytangent = y;
ztangent = z;
step = 2*(x2-x1)/n;
x = x1+step-0.001 :  step : x2 ;
y=(2*cy-(2*a*b.*x + 2*d*b +2*b*c*cz)./(c^2)-((-2*cy+(2*a*b.*x+2*d*b+2*b*c*cz)./(c^2)).^2-4*(1+b^2/c^2).*(x.^2 -2*cx.*x+cx^2+cy^2+ a^2.*x.^2./c^2 + 2*a*d.*x./c^2 +d^2/c^2 + 2*a*cz.*x./c + 2*cz*d/c +cz^2 -r^2)).^0.5)/(2+2*b^2/c^2);
z=-1/c *(a.*x + b.*y +d);
xtangentt = [xtangent x];
ytangentt = [ytangent y];
ztangentt = [ztangent z];
points = [xtangentt ; ytangentt ; ztangentt];
end