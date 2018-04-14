function [a] = najmnKwadratow(n, x, y)
    % n - zadany stopien wielomianu
    % x - wektor argumentow
    % y - wektor wartosci
    
    % a - wektor wyznaczonych wspolczynnikow
    
    
    [m, ~] = size(x); %pobranie rozmiarow
    A = zeros(m, n+1);
    
    for i=1:m %wiersze
        for j=0:n %kolumny
            A(i,n+1-j) = x(i)^(j); %wype�niamy odpowiednimi wartooeciami potegi x
        end
    end
    
    %Rozk�ad QR
    [Q, R] = qrZmodGS(A); %rozklad qr metoda g-s z poprzedniego zadania
    a = R \ (Q'*y);
    
    %Uklad r�wna� normalnych
    %a = (A'*A)\(A'*y); %rozwiazanie ukaadu r�wnan  
end