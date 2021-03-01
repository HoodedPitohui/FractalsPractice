%%Set up figure
clear
figure
hold on

%%Initial Parameters
dist = 2;
degree1 = 0;
counter = 1;
limit = 5;
degree2 = 120;
degree3 = 240;

%%Calculate original three points
p1 = [0, 0];
p2 = [dist, 0];
p3 = [0 + cosd(-60) * dist, 0 + sind(-60) * dist];

%%Run Recursion
drawKochLine(p1, p2, dist, degree1, counter, limit);
drawKochLine(p3, p1, dist, degree2, counter, limit);
drawKochLine(p2, p3, dist, degree3, counter, limit);


%%Scaling the axes
center = [(p2(1) - p1(1)) / 2, (p3(2) + (p1(2) + sind(60) * (dist / 3))) / 2];
distFactor = (p1(2) + sind(60) * (dist / 3)) + abs(center(2) - 0);
yBottom = center(2) - distFactor;
xLeft = center(1) - distFactor;
xRight = center(1) + distFactor;
yTop = center(2) + distFactor;
height1 = 9;
xlim([xLeft xRight])
ylim([yBottom yTop])


%%Set the Title
s1 = 'Koch Snowflake with ';
s2 = ' ' + string(limit);
s3 = ' Iterations';
s4 = strcat(s1, s2, s3);
title(s4);
