function s = sinusoidesAmostradas(A, f0, phi, ti, tf, fs)
% sinusoidesAmostradas(A, f0, phi, ti, tf, fs): amostra (a uma taxa fs) uma
% sinusoide da foram A*cos(2*pi*f0*t + phi), com t (em segundos) variando de ti a
% tf

if ti > tf
    error('ti deve ser menor ou igual a tf');
else
    N = (tf - ti)*fs;
    tt = ti : 1/fs : tf;
    s = A*cos(2*pi*f0*tt' + phi*ones(N+1, 1));
end
end