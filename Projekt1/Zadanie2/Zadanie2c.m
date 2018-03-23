function [] = Zadanie2c(n)
    A = c_genA(n);
    b = c_genB(n);
    L1 = cholesky(A,b,n);
    x = solveEq(L1,b);
    fprintf('Odpowiedz na zadanie to: \n');
    disp(x);
end