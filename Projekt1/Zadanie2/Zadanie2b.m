function [] = Zadanie2b(n)
    A = b_genA(n);
    b = b_genB(n);
    L1 = cholesky(A,b,n);
    x = solveEq(L1,b);
    fprintf('Odpowiedz na zadanie to: \n');
    disp(x);
end