x= -4 : 0.01 : 4;
a=10;b=10;c=10;d=-8;

y= (((2*a*b.*x)./(c^2)).^2 -4*(1+b^2 / c^2).*((1+a^2/c^2).*x.^2+(2*a*d/c^2).*x+d^2/c^2 -4));
plot (x,y);
hold on ;
plot (x,y*0);
