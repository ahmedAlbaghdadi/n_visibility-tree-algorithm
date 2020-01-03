function [c] = checklineinterval( px, py, pz, qx , qy , qz , ma)
% «бгѕќб«  ен дёЎ нд жг’ЁжЁе гд «бя—«  гяжде гд «—»Џ «Џгѕе ен г—яе «бя—е
% жд’Ё ёЎ—е« «г« гќ—ћ« е« Ёен г џн— «г« 1 Ён Ќ«б жћжѕ  ё«ЎЏ гЏ «н гд «бя—« 
% «ж 0 Ён Ќ«б Џѕг жћжѕ «н  ё«ЎЏ гЏ ћгнЏ «бя—«  Ён «бг’ЁжЁе ma
isFound =0;
mySize = size(ma);   
for i=1 : mySize(1)
    found = checkline(px,py,pz,qx,qy,qz,ma(i , 1),ma(i , 2),ma(i , 3),ma(i , 4));
    if found(4) ~= 0
        isFound = 1;
    end
end
c = isFound;

end 