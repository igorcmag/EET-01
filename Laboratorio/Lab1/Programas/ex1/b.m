set(0, 'defaulttextinterpreter', 'Latex');

%sinal s
nn = 0:49;
s = zeros(50, 1);s(1:5:50) = 1;

%grafico
stem(nn, s);title('Sinal s');xlabel('$n$');ylabel('$s[n]$');yticks([0 1]);

