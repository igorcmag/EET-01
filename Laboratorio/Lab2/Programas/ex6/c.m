set(0, 'defaulttextinterpreter', 'Latex');

n = [0, 1, 2];
x = [2, 1, -1];
Ts = 1;
x_r = interpolador_seno(x, n, Ts);
fplot(x_r);title('x(0)=2, x(1)=1 e x(2)=-1');xlabel('$t$');ylabel('$x_r(t)$');