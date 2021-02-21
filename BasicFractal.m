figure
hold on
stPoint = [0, 0];
dist1 = 1;
angle = 90;
for i = 1: 100
    if angle == 90
        P2 = [stPoint(1) + dist1, stPoint(2)];
        X1 = [stPoint(1), P2(1)];
        Y1 = [stPoint(2), P2(2)];
        plot(X1, Y1);
    elseif angle == 180
        P2 = [stPoint(1), stPoint(2) + dist1];
        X1 = [stPoint(1), P2(1)];
        Y1 = [stPoint(2), P2(2)];
        plot(X1, Y1);
    elseif angle == 270
        P2 = [stPoint(1) - dist1, stPoint(2)];
        X1 = [stPoint(1), P2(1)];
        Y1 = [stPoint(2), P2(2)];
        plot(X1, Y1);
    else
        P2 = [stPoint(1), stPoint(2) - dist1];
        X1 = [stPoint(1), P2(1)];
        Y1 = [stPoint(2), P2(2)];
        plot(X1, Y1);
    end
    angle = mod(angle + 90, 360);
    dist1 = dist1 / 2;
    stPoint = P2;    
end