function [] = drawKochLine(p1, p2, dist, degree, counter, limit)
    if (counter == limit)
        p3 = [p1(1) + dist / 3, p1(2)];
        p4 = [p2(1) - dist / 3, p2(2)];
        test2 = (p2(1) - dist / 3 ) - (p1(1) + dist / 3)
        p5 = [p1(1) + test2 + test2 * cosd(60), test2 * sind(60)];
        
        plotTwoPoints(p3, p5);
        plotTwoPoints(p4, p5);
        plotTwoPoints(p1, p3);
        plotTwoPoints(p4, p2);
    elseif (counter < limit)
        p3 = [p1(1) + dist / 3, p1(2)];
        p4 = [p2(1) - dist / 3, p2(2)];
        test2 = (p2(1) - dist / 3 ) - (p1(1) + dist / 3);
        p5 = [test2 + test2 * cosd(60), test2 * sind(60)];
        
        plotTwoPoints(p3, p5);
        plotTwoPoints(p4, p5);
        %plotTwoPoints(p1, p3);
        %plotTwoPoints(p4, p2);
        
        drawKochLine(p1, p3, dist / 3, degree, counter + 1, limit);
        %drawKochLine(p3, p5, dist / 3, degree, counter + 1, limit);
        %drawKochLine(p4, p5, dist / 3, degree, counter + 1, limit);
        drawKochLine(p4, p2, dist / 3, degree, counter + 1, limit);
    else
    end
end