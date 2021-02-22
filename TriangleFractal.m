figure
hold on;
dist = 1;
p1 = [0, 0];
p2 = [1, 0];
p3 = [dist * cosd(60), dist * sind(60)];
plotTwoPoints(p1, p2);
plotTwoPoints(p1, p3);
plotTwoPoints(p2, p3);