function[] = Zadanie3(n,e2)
    i=1;
    e=1;
    A = b_genA(n);
    b = b_genB(n);
    
    %Sprawdzenie warunku dostatecznego zbie�no�ci
    if(warDost(A,n) == 0)
        disp('Warunek silnej dominacji diagonalnej nie jest spelniony');
        return
    end
    
    while e>e2 % 0.0000001
        [x,iter(i)] = GaussSeidel(A,b,n,e);
        e = e/10;
        r(i) = e;
        i = i+1;
    end
    plot(iter, r);
    title('Zaleznosc bledu wyniku od ilosci iteracji')
    xlabel('Ilosc iteracji');
    ylabel('Blad wyniku');
end