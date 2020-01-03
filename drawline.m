function check = drawline( px, py, pz, qx , qy , qz)
% гѕќб« е« дёЎе »ѕ«не ждёЎе де«не ж ёжг «бѕ«бе »—”г ќЎ г” ёнг »ндег«

t =linspace (0,1);
x= px+(qx-px).*t;
y=py+(qy-py).*t;
z= pz+(qz-pz).*t;
plot3 (x,y,z,'linewidth',1);
hold on ;
check=0;

end 