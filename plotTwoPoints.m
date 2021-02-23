function [] = plotTwoPoints(P1, P2)
    %plot two points given two values
    X1 = [P1(1), P2(1)];
    Y1 = [P1(2), P2(2)];
    plot(X1, Y1, 'black');
end