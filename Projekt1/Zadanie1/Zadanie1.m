function [] = Zadanie1()
    x = 1.5; %pocz�tkowe zainicjalizowanie zmiennej
    g = 1.0;
    while( x > 1 ) %przechodzenie przez p�tle i dzielenie epsilona 
        g = g/2;   %tak d�ugo a� dodanie go nie wp�ynie na wynik
        x = 1.0 + g;
    end
    g = g*2; %jeden przebieg p�tli w ty�
    fprintf('Wyznaczony epsilon maszynowy: %d \n',g);
end
