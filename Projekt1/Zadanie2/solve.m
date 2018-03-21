function [x] = solve(L1,b)
    b = b';
    y = L1\b;
    x = L1'\y;
end