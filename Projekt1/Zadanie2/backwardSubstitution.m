function [x] = backwardSubstitution(A,b)
    m = length(b);
    x(m,1) = b(m)/A(m,m);
    for i = m-1:-1:1
        x(i,1)=(b(i)-A(i,i+1:m)*x(i+1:m,1))./A(i,i);
    end
end