function [ret] = rec(px, py ,pz,type,ids1,ids2, sphers ,fx,fy,fz,n)
global alllist;
if type == -1
    nearsphere= nearestsphere(px,py,pz,fx,fy,fz,sphers); % —ﬁ„ ’› «·ﬂ—Â «·„ÿ·Ê»Â
    points1 = get_points(sphers(nearsphere,1),sphers(nearsphere,2),sphers(nearsphere,3),sphers(nearsphere,4),px,py,pz,n);
    lin=size(points1);
    for a=1:lin(2)
        sizealllist=size(alllist);
        col=sizealllist(1);
        alllist (col+1,:) = [px , py , pz ,points1(1,a), points1(2,a), points1(3,a),0];
%          drawline(px,py,pz,points1(1,a),points1(2,a),points1(3,a));
        rec(points1(1,a),points1(2,a),points1(3,a),2, 0,nearsphere, sphers ,fx,fy,fz,n);
    end
    
    
elseif type == 1
    if ids2==0
        %drawline(px,py,pz,fx ,fy ,fz);
        sizealllist=size(alllist);
        col=sizealllist(1);
        alllist (col+1,:) = [px , py , pz ,fx, fy, fz,0];
    else
        cone2= getcone(sphers(ids1,1),sphers(ids1,2),sphers(ids1,3),sphers(ids1,4),sphers(ids2,1),sphers(ids2,2),sphers(ids2,3),sphers(ids2,4),n);
        si=size(cone2);
        kj= si(2);
        for ab=1:kj
            if cone2(1,ab)==px && cone2(2,ab)==py && cone2(3,ab)==pz
%                 drawline(px,py,pz,cone2(4,ab),cone2(5,ab),cone2(6,ab));
               sizealllist=size(alllist);
               col=sizealllist(1);
               alllist (col+1,:) = [px , py , pz ,cone2(4,ab),cone2(5,ab),cone2(6,ab),0];
               if dontrepet(cone2(4,ab),cone2(5,ab),cone2(6,ab))==0
               rec(cone2(4,ab),cone2(5,ab),cone2(6,ab),2, 0,ids2, sphers ,fx,fy,fz,n);
               end
                
            end
        end
        
    end

    
else type == 2
        points2 = get_points(sphers(ids2,1),sphers(ids2,2),sphers(ids2,3),sphers(ids2,4),fx,fy,fz,n);
        km = size (points2);
        for bg=1:km(2)
            near2 = nearestsphere(points2(1,bg),points2(2,bg),points2(3,bg),fx,fy,fz,sphers);
            if near2==0
                sizealllist=size(alllist);
                col=sizealllist(1);
                alllist (col+1,:)= [px , py , pz ,points2(1,bg), points2(2,bg) ,points2(3,bg) ,ids2 ];
%                 unusedd = connectt(sphers(ids2,1),sphers(ids2,2),sphers(ids2,3),sphers(ids2,4),px , py , pz,points2(1,bg), points2(2,bg) ,points2(3,bg));
                if dontrepet(points2(1,bg), points2(2,bg) ,points2(3,bg))==0
                rec(points2(1,bg), points2(2,bg) ,points2(3,bg),1,ids2,0, sphers,fx,fy,fz,n);
                end
            else
            cone1 = getcone(sphers(ids2,1),sphers(ids2,2),sphers(ids2,3),sphers(ids2,4),sphers(near2,1),sphers(near2,2),sphers(near2,3),sphers(near2,4),n);
            lin=size(cone1);
            for b=1:lin(2)
                sizealllist=size(alllist);
                col=sizealllist(1);
                alllist (col+1,:)= [px , py , pz ,cone1(1,b), cone1(2,b),cone1(3,b) ,ids2 ];
%                 unusedd = connectt(sphers(ids2,1),sphers(ids2,2),sphers(ids2,3),sphers(ids2,4),px , py , pz,cone1(1,b), cone1(2,b),cone1(3,b));
                if dontrepet(cone1(1,b), cone1(2,b),cone1(3,b))==0
                rec(cone1(1,b), cone1(2,b) ,cone1(3,b),1,ids2,near2, sphers,fx,fy,fz,n);
                end
            end
            end
        end

end
end