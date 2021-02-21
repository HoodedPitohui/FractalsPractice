figure
hold on %keep data

angleIts = 36; %amount of times broader for loop repeats
angle = 0; %starting angle
redFactor = 0.99; %how much the line distance shrinks
masterDist = 2;
angRotation = 360 / angleIts;
for i = 1: angleIts
    stPoint = [0, 0]; %each line starts at the origin
    dist1 = masterDist;
    angle = angle + angRotation; %intended for later ability to change angle amount
    for j = 1: 100
        P2 = [stPoint(1) + dist1 * cosd(angle), stPoint(2) + dist1 * sind(angle)];
        plotTwoPoints(stPoint, P2);
        angle = mod(angle + angRotation, 360);
        dist1 = dist1 * redFactor;
        stPoint = P2;    
    end
end
