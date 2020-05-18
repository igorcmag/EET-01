function [nn, x] = gerarSinusoideFinita2(A, w, phi, ni, nf)
% [nn, x] = gerarSinusoideFinita2(A, w, phi, ni, nf): gera um vetor linha nn com
% os valores de n, indo de ni ate nf, e um vetor coluna 
% x[n] = A*cos(w*n + phi)

if ni > nf
    error('ni deve ser menor ou igual a nf');
else
    nn = ni : nf;
    x = A*cos(w*nn' + phi*ones(nf-ni+1, 1));
end
end 