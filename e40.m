clc ; 
clear ; 
close all ;
sphers = [5 5 5 4; 10 100 12 4 ; 10 10 4 5 ; -20 29 12 3];
sx=-10; sy=-10; sz=-10; fx=20; fy=20; fz=20; nos=4; n=100;
nearsphere= nearestsphere(sx,sy,sz,fx,fy,fz,sphers); % —ﬁ„ ’› «·ﬂ—Â «·„ÿ·Ê»Â
firstlevelpoints = get_points(sphers(nearsphere,1),sphers(nearsphere,2),sphers(nearsphere,3),sphers(nearsphere,4),sx,sy,sz,n);
lin=size(firstlevelpoints);
for a=1:lin(2)
   drawline(sx,sy,sz,firstlevelpoints(1,a),firstlevelpoints(2,a),firstlevelpoints(3,a));
end  
finallevelpoints = get_points(sphers(nearsphere,1),sphers(nearsphere,2),sphers(nearsphere,3),sphers(nearsphere,4),fx,fy,fz,n);
for tf=1:n
    nearl2 = nearestsphere(finallevelpoints(1,tf),finallevelpoints(2,tf),finallevelpoints(3,tf),fx,fy,fz,sphers);
    if nearl2==0
        drawline(finallevelpoints(1,tf),finallevelpoints(2,tf),finallevelpoints(3,tf),fx,fy,fz);
    else
        cone1 = getcone(sphers(nearsphere,1),sphers(nearsphere,2),sphers(nearsphere,3),sphers(nearsphere,4),sphers(nearl2,1),sphers(nearl2,2),sphers(nearl2,3),sphers(nearl2,4),n);
        lin=size(cone1);
        for b=1:lin(2)
            drawline(cone1(1,b),cone1(2,b),cone1(3,b),cone1(4,b),cone1(5,b),cone1(6,b));
        end
    end
end





 

