function [c] = checklineinterval( px, py, pz, qx , qy , qz , ma)
% �������� �� ������ ������� �� ������ ����� �� ���� ����� �� ���� �����
% ���� ����� ��� �������� ��� ����� ��� 1 �� ��� ���� ����� �� �� �� ������
% �� 0 �� ��� ��� ���� �� ����� �� ���� ������ �� �������� ma
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