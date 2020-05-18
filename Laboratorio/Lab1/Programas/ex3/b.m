set(0, 'defaulttextinterpreter', 'Latex');

s = sinusoidesAmostradas(30, 0.2, 3*pi/2, 5, 15, 10);
tt = 5 : 1/10 : 15
stem(tt, s);title('Amostragem de $30sin(0.4\pi t)$');xlabel('$t (segundos)$');ylabel('$s(t)$');

