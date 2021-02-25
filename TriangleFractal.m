figure
hold on;
dist = 1;
p1 = [0, 0];
p2 = [dist, 0];
p3 = [dist * cosd(60), dist * sind(60)];
counter = 1;
limit = 5;
redFactor = 0.5;
xlim([0, dist]);
ylim([0, dist]);
drawTriangle(p1, p2, p3, counter, limit, dist, redFactor);