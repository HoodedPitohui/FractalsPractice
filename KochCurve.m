clear
figure
hold on

dist = 1;
degree1 = 0;

p1 = [0, 0];
p2 = [dist, 0];
p3 = [0 + cosd(-60) * dist, 0 + sind(-60) * dist];

%plotTwoPoints(p1, p3);
%plotTwoPoints(p1, p2);
%plotTwoPoints(p2, p3);

counter = 1;
limit = 3;
degree2 = 120;
degree3 = 240;
drawKochLine(p1, p2, dist, degree1, counter, limit);
drawKochLine(p3, p1, dist, degree2, counter, limit);
drawKochLine(p2, p3, dist, degree3, counter, limit);



xlim([-dist dist])
ylim([-dist dist])
