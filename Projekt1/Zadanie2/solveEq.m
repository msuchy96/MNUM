function [x] = solveEq(L1,b)
    b = b';
    y = forwardSubstitution(L1,b);
    x = backwardSubstitution(L1',y);
end