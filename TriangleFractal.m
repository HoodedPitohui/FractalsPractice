figure
hold on;
dist = 1;
p1 = [0, 0];
p2 = [1, 0];
p3 = [dist * cosd(60), dist * sind(60)];
counter = 1;
limit = 10;
redFactor = 0.5;
drawTriangle(p1, p2, p3, counter, limit, dist, redFactor);