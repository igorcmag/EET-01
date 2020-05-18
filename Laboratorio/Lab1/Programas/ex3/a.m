set(0, 'defaulttextinterpreter', 'Latex');

s = sinusoidesAmostradas(50, 1200, pi/4, 0, 0.007, 8000);

%grafico em funcao do tempo
tt = 0 : 1/8000 : 0.007;
figure (1);plot(tt, s, 'b*-');title('Amostra em funcao do tempo');xlabel('$t (segundos)$');ylabel('$s(t)$');

%grafico em funcao do indice
nn = 1 : (0.007*8000+1)
figure (2);stem(nn, s);title('Amostra em funcao do indice');xlabel('$n$');ylabel('$s[n]$');