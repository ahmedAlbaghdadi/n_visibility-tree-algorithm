function [d] = dis( px, py, pz, qx , qy , qz)
% �������� �� ������ ����� ����� ���� ������� ��� ��������
d=sqrt((px-qx)^2+(py-qy)^2+(pz-qz)^2);
end 