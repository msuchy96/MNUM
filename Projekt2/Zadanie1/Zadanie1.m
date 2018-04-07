function [] = Zadanie1()
    iterQR = 0; %liczba wartosci wlasnej QR bez przesuniec
    iterQRS = 0; %liczba wartosci wlasnej QR z przesunieciami
    
    timeQR = 0; %czas wykonania alg QR bez przesuniec
    timeQRS = 0; %czas wykonania alg QR z przesunieciami
    
    SIZE = 20; %rozmiar maciery
    matrixNumberR = 30; %ilosc losowych macierzy

    %Generowanie danych
    for i=1:matrixNumberR
        A = rand(SIZE);
        while rank(A)~= SIZE %powstanie macierzy o pelnym rzedzie
            A = rand(SIZE);
        end
 
        %A = A'+A; %dla symetrycznych
        tolerance = 0.0000001;
        imax = 200;
        
        start = tic;
        [~,D] = eig(A);
        timeEig = toc(start);
        
        %QR bez przesuniec
        %[eigens, iteracje, time, ok] = bezPrzesun(A, tolerance, imax);
        %if ok == 1
        %   ILEMACQR = ILEMACQR + 1;
        %    iterQR = iterQR + iteracje;
        %    timeQR = timeQR + time;
        %end
        
        %QR z przesunieciami
        [eigens, iteracje, time, ok] = zPrzesun(A, tolerance, imax);
        if ok == 1
            ILEMACQRS = ILEMACQRS + 1;
            iterQRS = iterQRS + iteracje;
            timeQRS = timeQRS + time;
        end
    end
        
    fprintf('Ilosc macierzy: %d\n',ILEMAC);
    fprintf('Wielkosc macierzy: %d\n',SIZE);
        
    %Wyniki bez przesuniec:
    %SREDNIAQRI = iterQR / ILEMACQR;
    %SREDNIAczasQR = timeQR / ILEMACQR;
    %fprintf('Bez przesuniec:\n');
    %fprintf('Srednia ilosci iteracji %d\n',SREDNIAQRI);
    %fprintf('Sredni czas obliczen %d\n',SREDNIAczasQR);
        
    %Wyniki z przesunieciami:
    SREDNIAQRSI = iterQRS / ILEMACQRS;
    SREDNIAczasQRS = timeQRS / ILEMACQRS;
    fprintf('Z przesunieciami:\n');
    fprintf('Srednia ilosci iteracji %d\n',SREDNIAQRSI);
    fprintf('Sredni czas obliczen %d\n',SREDNIAczasQRS);
end