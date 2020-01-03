function [c] = nearestsphere( px, py, pz, qx , qy , qz , ma)
% œŒ· ‰ﬁÿ Ì‰ Ê„’›Ê›Â ﬂ—«  Ê —Ã⁄ —ﬁ„ ’› «·ﬂ—Â «·«ﬁ—» «· Ì Ìﬁÿ⁄Â« «·Œÿ 
vector= [];
z=size(ma);
for k=1:z(1)
    for t=0:0.01:1
        x= px+(qx-px).*t;
        y=py+(qy-py).*t;
        z= pz+(qz-pz).*t;
        diste = dis(x,y,z,ma(k,1),ma(k,2),ma(k,3));
        if diste<ma(k,4)-0.0001
            vector(k)=dis(px,py,pz,x,y,z);
        end
    end
end
b=size(vector);
for s=1:b(2)
    if vector(s)==0
        vector(s)=99999;
    end
end
if b(1)<1
 c=0;
else
       [m,i] = min(vector);
        c=i;
end
end