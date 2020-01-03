function [id] = pointtoid(x , y ,z )

global points;

q= size(points);

for steppoint =1 : q(1)
     if abs(points(steppoint , 1)-x)<0.001 && abs(points(steppoint , 2)-y)<0.001 &&  abs(points(steppoint , 3)-z)<0.001   
        id = steppoint;
        return;
     end
end

end 

