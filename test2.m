clc ; 
clear ; 
close all ;
sx=-10; sy=-10; sz=-10; fx=60; fy=60; fz=60; nos=100; n=100;
 sphers= plotsphers(nos,20,10,0.5,50);
% sphers = [10 10 9 3; 20 20 21 3];
ceoi = [];
for i=1:nos
    intersphere = checkline(sx,sy,sz,fx,fy,fz,sphers(i,1),sphers(i,2),sphers(i,3),sphers(i,4));
    if intersphere(4)==0
        
    else
        ceoi=[ceoi ;intersphere];%  Õ ÊÌ „⁄·Ê„«  ⁄‰ Ã„Ì⁄ «·ﬂ—«  «· Ì  ﬁÿ⁄ «·Œÿ „‰ «·»œ«ÌÂ «·Ï «·‰Â«ÌÂ
    end
end
allps=[];allps1=[];allps2=[];allps3=[];
allphaces=[];fapoints=[];
nceoi=size(ceoi);
if nceoi(1)==0 
    
else
for j=1:nceoi(1)
fapoints = get_points(ceoi(j,1),ceoi(j,2),ceoi(j,3),ceoi(j,4),sx,sy,sz,n);
allphaces=[allphaces ; fapoints]; % ÌÕ ÊÌ ⁄·Ï Ã„Ì⁄ «·‰ﬁ«ÿ «· Ì  Ê«ÃÂ ‰ﬁÿÂ «·»œ«ÌÂ „‰ ﬂ· «·ﬂ—«  «· Ì  ﬁÿ⁄ «·Œÿ
end
end
nof=size(allphaces);
for h=1:3:nof(1)
for k=1:nof(2)
    allps1 =[allps1, allphaces(h,k)];
    allps2 =[allps2, allphaces(h+1,k)];
    allps3 =[allps3, allphaces(h+2,k)];
    allps = [allps1 ; allps2 ; allps3]; % Â–Â «·„’›Ê›Â  Õ ÊÌ ﬂ· «·‰ﬁ«ÿ «· Ì  Ê«ÃÂ «·»œ«ÌÂ „‰ «·ﬂ—«  «·„ﬁ«»·Â ·Â« ÊÂÌ „‰Ÿ„Â «ﬂÀ— „‰ «· Ì ﬁ»·Â« ÕÌÀ ›ÌÂ« 3 ’›Ê› ›ﬁÿ
end
end
jkp=size(allps);
for a=1:jkp(2)
%   drawline(sx,sy,sz,allps(1,a),allps(2,a),allps(3,a));
end        
reallines1 = [];reallines2 = [];reallines3 = [];reallines = [];

mySizeAllps = size(allps);

for step = 1 : mySizeAllps(2)
    testPoint =  checklineinterval( sx, sy, sz, allps(1 ,step) , allps(2 ,step) , allps(3 ,step) , sphers);
    if testPoint == 0
        reallines1 = [reallines1 , allps(1,step)];
        reallines2 = [reallines2 , allps(2,step)];
        reallines3 = [reallines3 , allps(3,step)];
    end
end
reallines = [reallines1;reallines2;reallines3];


tyeu=size(reallines);
for o=1:tyeu(2)
%  drawline(sx,sy,sz,reallines(1,o),reallines(2,o),reallines(3,o));
end

couter=[];
rspheres=[];
spe = size(ceoi);
rpoint= size(reallines);
testmac= [spe(1) , rpoint(2)];
couter = ones(testmac);
for sph=1:spe(1)
    for pse= 1:rpoint(2) 
        if dis(ceoi(sph,1),ceoi(sph,2),ceoi(sph,3),reallines(1,pse),reallines(2,pse),reallines(3,pse))<=ceoi(sph,4)+0.0001
          rspheres(sph,:)=ceoi(sph,:);
          couter (sph,pse)= 1;
        else
            couter (sph,pse)= 0;
        end
    end

end

reachedsphere=[]; %  Õ ÊÌ ⁄·Ï „⁄·Ê„«  Ã„Ì⁄ «·ﬂ—«  «· Ì  ’· «·ÌÂ« «·ŒÿÊÿ „»«‘—Â „‰ «·„’œ—
testcolom = size(rspheres);
rpoint= size(reallines);
master=[];
deteils=[];
idNext=1;
for pse= 1:rpoint(2) 
minr = dis(rspheres(1,1),rspheres(1,2),rspheres(1,3),reallines(1,pse),reallines(2,pse),reallines(3,pse));
    for tsp=1:testcolom(1)
        if rspheres(tsp,4)<=minr
            minr = dis(rspheres(tsp,1),rspheres(tsp,2),rspheres(tsp,3),reallines(1,pse),reallines(2,pse),reallines(3,pse));
            xts=rspheres(tsp,1); yts=rspheres(tsp,2); zts=rspheres(tsp,3);
            
        end
    end
    myid=0;
    trw=size(master);
    for im = 1:trw(1)
        if abs(master(im,2)- minr)<=0.0001 &&  abs(master(im,3)-xts)<=0.0001  && abs(master(im,4)-yts)<=0.0001   &&  abs(master(im,5)-zts)<=0.0001 
            myid=master(im,1);
        end
    end
    if(myid ==0)
        myrow = [idNext , minr ,xts , yts  , zts];
        myid= idNext;
        master = [master ; myrow];
        idNext = idNext+1;
    end
    
    vip = [myid ,reallines(1,pse),reallines(2,pse),reallines(3,pse) ];
    deteils = [deteils ; vip];
    
end

dj=size(deteils);
for ko=1:dj(1)
  drawline(sx,sy,sz,deteils(ko,2),deteils(ko,3),deteils(ko,4));
end
