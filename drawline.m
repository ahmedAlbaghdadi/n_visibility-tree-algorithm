function check = drawline( px, py, pz, qx , qy , qz)
% �������� ���� ����� ����� ����� ����� ������ ���� �� ������ ������

t =linspace (0,1);
x= px+(qx-px).*t;
y=py+(qy-py).*t;
z= pz+(qz-pz).*t;
plot3 (x,y,z,'linewidth',1);
hold on ;
check=0;

end 