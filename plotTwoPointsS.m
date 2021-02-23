function [graph] = plotTwoPointsS(P1, P2)
    %s = store, so this is the other method but it stores the variable
    %plot two points given two values
    X1 = [P1(1), P2(1)];
    Y1 = [P1(2), P2(2)];
    graph = plot(X1, Y1, 'black');
end
