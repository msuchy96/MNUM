function [] = Zadanie1()
    x = 1.5;
    g = 1.0;
    while( x > 1 )
        g = g/2;
        x = 1.0 + g;
    end
    g = g*2; %jeden przebieg pêtli w ty³
    fprintf('Wyznaczony epsilon maszynowy: %d \n',g);
end
