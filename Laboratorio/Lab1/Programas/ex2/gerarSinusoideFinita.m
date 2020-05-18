function x = gerarSinusoideFinita(A, w, phi, ni, nf)
% gerarSinusoideFinita(A, w, phi, ni, nf): gera um vetor coluna da forma 
% x[n,1] = A*cos(w*n + phi) variando de n = ni ate n = nf
if ni > nf
    error('ni deve ser menor ou igual a nf');
else
    nn = (ni : nf)';
    x = A*cos(w*nn + phi*ones(nf-ni+1, 1));
end
end 
