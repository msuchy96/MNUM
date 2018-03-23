function [] = Zadanie2a(n)
    A = a_genA(n);
    b = a_genB(n);
    L1 = cholesky(A,b,n);
    x = solveEq(L1,b);
    fprintf('Odpowiedz na zadanie to: \n');
    disp(x);
end