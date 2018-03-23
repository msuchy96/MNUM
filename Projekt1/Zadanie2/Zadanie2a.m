function [] = Zadanie2a(n)
    A = a_genA(n);          %generator macierzy wej�ciowej A
    b = a_genB(n);          %generator macierzy wej�ciowej b
    b=b';
    
    tic                     %rozpocz�cie pomiaru czasu
    L1 = cholesky(A,n);     %rozk�ad metod� Cholesky'ego-Banachiewicza
    x = solveEq(L1,b);      %rozwi�zanie r�wnania
    t = toc;                %koniec pomiaru czasu
    
    r = b - A * x;          %obliczenie residuum
    br = norm(r);           %obliczenie b��du rozwi�zania jako normy z residuum
    
    fprintf("Zmierzony czas rozwi�zania: %d \n",t);
    fprintf("Liczba r�wna� i b��d rozwi�zania: \n %d %d \n",n,br);
end