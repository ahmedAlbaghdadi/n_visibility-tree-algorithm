function [ansr] = check(px,py,pz,r1,qx,qy,qz,r2)
% ���� ������� ����� ����� 0 �� ��� �������� � 1 �� ��� ��� ��������
if dis(px,py,pz,qx,qy,qz)<= r1+r2
    ansr = 0;
else
    ansr=1;
end

end
