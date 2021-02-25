figure
hold on;
dist = 1;
p1 = [0, 0];
p2 = [p1(1) + dist, p1(2)];
p3 = [p1(1), p1(2) + dist];
p4 = [p1(1) + dist, p1(2) + dist];
limit = 6;
redFactor = 0.4;
xlim([0, dist]);
ylim([0, dist]);
drawSquare(1, limit, p1, p2, p3, p4, dist, redFactor);