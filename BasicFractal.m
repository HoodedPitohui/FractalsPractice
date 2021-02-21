figure
hold on
stPoint = [0, 0];
dist1 = 1;
angle = 90;
for i = 1: 100
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
    dist1 = dist1 / 2;
    stPoint = P2;    
end