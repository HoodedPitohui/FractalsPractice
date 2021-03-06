function [] = drawKochLine(p1, p2, dist, degree, counter, limit)
    if (counter == limit)
        subDist = dist / 3;
        p3 = [p1(1) + subDist * cosd(degree), p1(2) + subDist * sind(degree)];
        p5 = [p3(1) + cosd(60 + degree) * subDist, p3(2) + sind(60 + degree) * subDist];
        p4 = [p2(1) - subDist * cosd(degree), p2(2) + subDist * sind(-degree)];
        
        plotTwoPoints(p3, p5);
        plotTwoPoints(p4, p5);
        plotTwoPoints(p1, p3);
        plotTwoPoints(p4, p2);
    elseif (counter < limit)
        
        subDist = dist / 3;
        p3 = [p1(1) + subDist * cosd(degree), p1(2) + subDist * sind(degree)];
        p5 = [p3(1) + cosd(60 + degree) * subDist, p3(2) + sind(60 + degree) * subDist];
        p4 = [p2(1) - subDist * cosd(degree), p2(2) + subDist * sind(-degree)];
  
        drawKochLine(p1, p3, dist / 3, degree, counter + 1, limit);
        drawKochLine(p3, p5, dist / 3, degree + 60, counter + 1, limit);
        drawKochLine(p5, p4, dist / 3, degree - 60, counter + 1, limit);
        drawKochLine(p4, p2, dist / 3, degree, counter + 1, limit);
    else
    end
end