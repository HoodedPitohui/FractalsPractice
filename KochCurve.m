figure
hold on
dist = 1;
p1 = [0, 0];
p2 = [dist, 0];
p3 = [dist * cosd(60), dist * sind(60)]; 
c1 = plotTwoPointsS(p1, p2);
c2 = plotTwoPointsS(p1, p3);
c3 = plotTwoPointsS(p2, p3);
delete(c1);