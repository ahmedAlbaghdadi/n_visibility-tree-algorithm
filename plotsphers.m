function [res] = plotsphers( m, tryerror, maxr, minr , space)
% Ъоцу Шбгу пбЧЪ лэб уЪоЧикх нэуЧ ШэфхЧ ШуцЧок кдцЧЦэх цЧфеЧн ЧоиЧб кдцЧЦэх
% уЯЮсЧЪхЧ кЯЯ ЧспбЧЪ ц кЯЯ уЭЧцсЧЪ ЧсШЭЫ кф уцок пс пбх ц Чкйу фен оиб
% уупф ц Чос фен оиб уупф ц ицс жск ЧсупкШ Чсаэ гэЪу Чсбгу Шх ЧуЧ уЮбЬЧЪхЧ
% нхэ уенцнх Ш 4 ЧкуЯх ц m ен ЪЭЪцэ ксь уксцуЧЪ Ьуэк ЧспбЧЪ Чсубгцух
ma=[];
for  c = 1:m
    found = 0;
    count = 0;
    while found == 0 && count <=tryerror
        count  = count +1;
        found = 1;
        r1 = round(space*rand(1,3)); 
        r2 = round(maxr*rand(1,1),2);
        if r2<=minr
            r2=minr;
        end
        r=[r1 r2];
        s = size(ma);
        for i = 1: s(1)
            row =  ma(i, :);
            if check(r(1), r(2) , r(3) , r(4) , row(1) , row(2) , row(3) , row(4)) == 0
                found =0;
            end
        end
    end
    
    
    
    
    
    if count<=tryerror +1
        ma=[ma ; r];  
    else
      return;
    end
    
end
res=ma;


% a=size(ma);
% for i=1:a(1)
% px=ma(i,1); py=ma(i,2); pz=ma(i,3); r=ma(i,4);
% 
% q=0 : pi/50 : 2*pi;
% w = 0 : pi/50 : 2*pi;
% [q,w]=meshgrid(q,w);
% x= px+(r-1)*sin(q).*cos(w);
% y= py+(r-1)*sin(q).*sin(w);
% z = pz+(r-1)*cos (q);
% surf(x,y,z);
% hold on ;
% end
% 
% xlabel ('x-axis');
% ylabel ('y-axis');
% zlabel ('z-axis');
end 