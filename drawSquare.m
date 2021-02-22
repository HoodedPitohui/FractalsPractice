function [] = drawSquare(counter, limit, p1, p2, p3, p4, dist, redFactor)
    plotTwoPoints(p1, p2);
    plotTwoPoints(p1, p3);
    plotTwoPoints(p2, p4);
    plotTwoPoints(p3, p4);
    if counter < limit
        p1_1 = [p1(1), p1(2)];
        p1_2 = [p1(1) + dist * redFactor, p1(2)];
        p1_3 = [p1(1), p1(2) + dist * redFactor];
        p1_4 = [p1(1) + dist * redFactor, p1(2) + dist * redFactor];
        drawSquare(counter + 1, limit, p1_1, p1_2, p1_3, p1_4, dist * redFactor, redFactor);
        
        p2_1 = [p2(1) - dist * redFactor, p1(2)]; 
        p2_2 = [p2(1), p2(2)];
        p2_3 = [p2(1) - dist * redFactor, p2(2) + dist * redFactor];
        p2_4 = [p2(1), p2(2) + dist * redFactor];
        drawSquare(counter + 1, limit, p2_1, p2_2, p2_3, p2_4, dist * redFactor, redFactor);

        
        p3_1 = [p3(1), p3(2) - dist * redFactor];
        p3_2 = [p3(1) + dist * redFactor, p3(2) - dist * redFactor];
        p3_3 = [p3(1), p3(2)];
        p3_4 = [p3(1) + dist * redFactor, p3(2)];
        drawSquare(counter + 1, limit, p3_1, p3_2, p3_3, p3_4, dist * redFactor, redFactor);

        
        p4_1 = [p4(1) - dist * redFactor, p4(2) - dist * redFactor];
        p4_2 = [p4(1), p4(2) - dist * redFactor];
        p4_3 = [p4(1) - dist * redFactor, p4(2)];
        p4_4 = [p4(1), p4(2)];
        drawSquare(counter + 1, limit, p4_1, p4_2, p4_3, p4_4, dist * redFactor, redFactor);

    else
        
    end
end