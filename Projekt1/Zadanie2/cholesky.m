function[L1] = cholesky(A,b,n)    
    L1 = zeros(n,n);
    for i = 1:n
        for j = i:n
            if(i == j)
                L1(i,i) = sqrt(A(i,i)-sumDiag(L1,i));
            else
                L1(j,i) = (A(j,i)-sumRest(L1,i,j))/L1(i,i);
            end
        end
    end
end