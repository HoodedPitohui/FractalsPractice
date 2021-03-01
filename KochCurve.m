clear
figure
hold on

dist = 1;
degree = 0;

p1 = [0, 0];
p2 = [dist, 0];
p3 = [0 + cosd(-60) * dist, 0 + sind(-60) * dist];

%plotTwoPoints(p1, p3);
%plotTwoPoints(p1, p2);
%plotTwoPoints(p2, p3);

counter = 1;
limit = 2;
drawKochLine(p1, p2, dist, degree, counter, limit);


xlim([0 dist])
ylim([-dist dist])
