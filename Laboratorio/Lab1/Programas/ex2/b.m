set(0, 'defaulttextinterpreter', 'Latex');

%vetor tempo
nn = -20:20

x1 = gerarSinusoideFinita(1, pi/20, 0, -20, 20);
x2 = gerarSinusoideFinita(1, 0.125, pi/4, -20, 20);
x3 = gerarSinusoideFinita(1.5, 0.25, pi/2, -20, 20);
x4 = gerarSinusoideFinita(1.5, 0.25, pi, -20, 20);
x5 = gerarSinusoideFinita(2, 0.5, pi, -20, 20);
x6 = gerarSinusoideFinita(2, pi/11, 3*pi/2, -20, 20);

%graficos
plot(nn, x1);hold on;plot(nn, x2);plot(nn, x3);plot(nn, x4);plot(nn, x5);plot(nn, x6);
title('gerarSinusoideFinita');xlabel('$n$');ylabel('$x_k[n]$');
legend('A=1, w=pi/20, phi=0', 'A=1, w=0.125, phi=pi/4', 'A=1.5, w=0.25, phi=pi/2', 'A=1.5, w=0.25, phi=pi', 'A=2, w=0.5, phi=pi', 'A=2, w=pi/11, phi=3*pi/2');