figure
hold on %keep data
angleIts = 4; %amount of times this repeats essentially
angle = 0;
redFactor = 0.80;
for i = 1: angleIts
    stPoint = [0, 0];
    dist1 = 1;
    angle = angle + 360 / angleIts; %intended for later ability to change angle amount
    for j = 1: 100
        %the below execution will change as I fit more angles
        if angle == 90
            P2 = [stPoint(1) + dist1, stPoint(2)];
            plotTwoPoints(stPoint, P2);
            
        elseif angle == 180
            P2 = [stPoint(1), stPoint(2) + dist1];
            plotTwoPoints(stPoint, P2);
            
        elseif angle == 270
            P2 = [stPoint(1) - dist1, stPoint(2)];
            plotTwoPoints(stPoint, P2);
            
        else
            P2 = [stPoint(1), stPoint(2) - dist1];
            plotTwoPoints(stPoint, P2);
        end
        angle = mod(angle + 90, 360);
        dist1 = dist1 * redFactor;
        stPoint = P2;    
    end
end
