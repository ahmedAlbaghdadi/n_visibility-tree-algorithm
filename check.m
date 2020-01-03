function [ansr] = check(px,py,pz,r1,qx,qy,qz,r2)
%  ѕќб гЏбжг«  я— нд ж —ћЏ 0 Ён Ќ«б  ё«ЎЏег« ж 1 Ён Ќ«б Џѕг  ё«ЎЏег«
if dis(px,py,pz,qx,qy,qz)<= r1+r2
    ansr = 0;
else
    ansr=1;
end

end
