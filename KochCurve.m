clear
figure
hold on
dist = 1;
p1 = [0, 0];
p2 = [dist, 0];
p3 = [dist / 3, 0];
p4 = [dist - dist / 3, 0];
test2 = (dist - dist /3 ) - (dist / 3)
p5 = [test2 + test2 * cosd(60), test2 * sind(60)];
xlim([0 1])
ylim([-1 1])
c2 = plotTwoPointsS(p3, p5);
c3 = plotTwoPointsS(p4, p5);
c1 = plotTwoPointsS(p1, p3);
c6 = plotTwoPointsS(p4, p2);