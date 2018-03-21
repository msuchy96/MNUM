function[L1] = cholesky(A,b,n)    
    fprintf('Macierz A to: \n');
    disp(A);
    L1 = zeros(n,n);
    for i = 1:n
        for j = i:n
            if(i == j)
                sum1 = sumDiag(L1,i);
                L1(i,i) = sqrt(A(i,i)-sum1);
            else
                sum2 = sumRest(L1,i,j);
                L1(j,i) = (A(j,i)-sum2)/L1(i,i);
            end
        end
    end
    fprintf('Mój wynik L1 to: \n');
    disp(L1);
    fprintf('Poprawny wynik L1 to: \n');
    disp(chol(A,'lower'));
end