function [x] = forwardSubstitution(A,b)
    m = length(b);
    x(1,1) = b(1)/A(1,1);
    for i = 2:m
        x(i,1)=(b(i)-A(i,1:i-1)*x(1:i-1,1))./A(i,i);
    end
end