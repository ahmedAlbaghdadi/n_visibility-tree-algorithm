function [c] = checkline( px, py, pz, qx , qy , qz , cx , cy , cz , r)
% ���� ������ ���� ����� ���� ����� ��� ������ ����� �� ��� ������� �� ����
% ��� �������� ����� ���� ����� �� ��� ��� ���� ����� �� ����� �������
c= [0 0 0 0];
for t=0:0.001:1
x= px+(qx-px).*t;
y=py+(qy-py).*t;
z= pz+(qz-pz).*t;
diste = dis(x,y,z,cx,cy,cz);
if diste<r-0.0001
    c=[cx cy cz r];
end
end
end 