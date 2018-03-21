function [b] = b_genB(n)
    top = 2.5 + 0.6*n;
    b = 3.1:0.6:top;
    fprintf('Wygenerowano macierz b: \n');
    disp(b);
end