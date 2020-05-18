set(0, 'defaulttextinterpreter', 'Latex');

%vetor x
x=[0;1;1;0;0;0]*ones(1,7);
x= x(:);
nn = 0:size(x)-1;

%grafico
stem(nn, x);title('Sinal x');xlabel('$n$');ylabel('$x[n]$');yticks([0 1]);