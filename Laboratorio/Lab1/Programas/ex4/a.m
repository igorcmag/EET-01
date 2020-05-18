set(0, 'defaulttextinterpreter', 'Latex');

%exponencial complexa
nn = 0 : 20;
xx= exp(nn).^(log(0.9)).*exp(j*(pi/4)*nn );

%grafico
subplot (2,1,1);stem(nn , real(xx));title('Real part');xlabel('$n$');
subplot(2,1,2);stem(nn , imag(xx));title('Imaginary part');xlabel('$n$');
