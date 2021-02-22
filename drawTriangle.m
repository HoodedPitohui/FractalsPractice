function [] = drawTriangle(p1, p2, p3, counter, limit, dist, redFactor)
    plotTwoPoints(p1, p2);
    plotTwoPoints(p1, p3);
    plotTwoPoints(p2, p3);
    if counter < limit 
        p1_1 = [p1(1), p1(2)];
        p1_2 = [p1(1) + dist * redFactor, p1(2)];
        p1_3 = [p1(1) + dist * redFactor * cosd(60), p1(2) + dist * redFactor * sind(60)]
        drawTriangle(p1_1, p1_2, p1_3, counter + 1, limit, dist * redFactor, redFactor);
        p2_1 = [p2(1) - dist * redFactor, p2(2)];
        p2_2 = [p2(1), p2(2)];
        p2_3 = [p2(1) - dist * cosd(60) * redFactor, p2(2) + dist * sind(60) * redFactor];
        drawTriangle(p2_1, p2_2, p2_3, counter + 1, limit, dist * redFactor, redFactor);
        p3_1 = [p3(1) - dist * cosd(60) * redFactor, p3(2) - dist * sind(60) * redFactor];
        p3_2 = [p3(1) + dist * cosd(60) * redFactor, p3(2) - dist * sind(60) * redFactor];
        p3_3 = [p3(1), p3(2)];
        drawTriangle(p3_1, p3_2, p3_3, counter + 1, limit, dist * redFactor, redFactor);

    else
    end
end