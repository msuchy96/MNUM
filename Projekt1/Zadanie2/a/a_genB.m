function [b] = a_genB(n)
    bottom = 2.5 - 0.5*n;
    b = 2:-0.5:bottom;
    fprintf('Wygenerowano macierz b: \n');
    disp(b);
end