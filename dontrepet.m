function [d] = dontrepet( px, py, pz)
global alllist;
d=0;
sizealllist=size(alllist);
row=sizealllist(1);
for i=1:row
   if  abs(px-alllist(i,1))<=0.001 && abs(py-alllist(i,2))<=0.001 && abs(pz-alllist(i,3))<=0.001
       d=1;
       return; 
   end
end
end 