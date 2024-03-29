clc ; 
clear ; 
close all ;
% %  height =10  widith1= 1m r=0.5m  safa=3m*2  rs=3 
% 
sphers = [
     5     5     5    10
     5     5    15    10
     5     5    25    10
     
     
    40    40    10    15
    40    40    25    15
    40    40    40    15
    
    
    35     3     5    10
    35     3    15    10
    35     3    25    10
    
    45     3     5    10
    45     3    15    10
    45     3    25    10
    
    55     3     5    10
    55     3    15    10
    55     3    25    10
    
    
    65     3     5    10
    65     3    15    10
    65     3    25    10
    
    85     3     5    10
    85     3    15    10
    85     3    25    10
    85     3    35    10
    85     3    45    10
    85     3    55    10
    85     3    65    10
    
    95     3     5    10
    95     3    15    10
    95     3    25    10
    95     3    35    10
    95     3    45    10
    95     3    55    10
    95     3    65    10
    
   110    70     5    10
   110    70    15    10
   110    70    25    10
   110    70    35    10
   110    70    45    10
   110    70    55    10
   110    70    65    10
   
    75    28     5    10
    75    28    15    10
    75    28    25    10
    75    28    35    10
    75    28    45    10
    
    75    38     5    10
    75    38    15    10
    75    38    25    10
    75    38    35    10
    75    38    45    10
    
    75    48     5    10
    75    48    15    10
    75    48    25    10
    75    48    35    10
    75    48    45    10
    
    75    58     5    10
    75    58    15    10
    75    58    25    10
    75    58    35    10
    75    58    45    10
    
    
     3    35     5    10
     3    35    15    10
     3    35    25    10
     
     3    45     5    10
     3    45    15    10
     3    45    25    10
     
     3    55     5    10
     3    55    15    10
     3    55    25    10
     
     3    65     5    10
     3    65    15    10
     3    65    25    10
     
     3    85     5    10
     3    85    15    10
     3    85    25    10
     3    85    35    10
     3    85    45    10
     3    85    55    10
     3    85    65    10
     
     3    95     5    10
     3    95    15    10
     3    95    25    10
     3    95    35    10
     3    95    45    10
     3    95    55    10
     3    95    65    10
   
    70   110     5    10
    70   110    15    10
    70   110    25    10
    70   110    35    10
    70   110    45    10
    70   110    55    10
    70   110    65    10
    
    28    75     5    10
    28    75    15    10
    28    75    25    10
    28    75    35    10
    28    75    45    10
    
    38    75     5    10
    38    75    15    10
    38    75    25    10
    38    75    35    10
    38    75    45    10
    
    48    75     5    10
    48    75    15    10
    48    75    25    10
    48    75    35    10
    48    75    45    10
    
    58    75     5    10
    58    75    15    10
    58    75    25    10
    58    75    35    10
    58    75    45    10

];








a=size(sphers);
for i=1:a(1)
px=sphers(i,1); py=sphers(i,2); pz=sphers(i,3); r=sphers(i,4);

q=0 : pi/50 : 2*pi;
w = 0 : pi/50 : 2*pi;
[q,w]=meshgrid(q,w);
x= px+(r-1)*sin(q).*cos(w);
y= py+(r-1)*sin(q).*sin(w);
z = pz+(r-1)*cos (q);
surf(x,y,z);
hold on ;
end

xlabel ('x-axis');
ylabel ('y-axis');
zlabel ('z-axis');