clear
figure
hold on

dist = 2;
degree = 0;

p1 = [0, 0];
p2 = [dist, 0];

counter = 1;
limit = 1;
drawKochLine(p1, p2, dist, degree, counter, limit);


xlim([0 dist])
ylim([-dist dist])
