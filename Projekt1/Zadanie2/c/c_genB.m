function [b] = c_genB(n)
    b = 1:1:n;
    b = (1./b).*(5/3); %odwr�cenie i przemno�enie ka�dego elementu
end