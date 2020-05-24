set(0, 'defaulttextinterpreter', 'Latex');

n = 0:100;
c = cos((3/320)*pi*(n.^2)' + pi*n');
subplot(1,2,1);plot(n, c);title('$c[n]$ plot');xlabel('$n$');ylabel('$c[n]$');
subplot(1,2,2);stem(n, c);title('$c[n]$ stem');xlabel('$n$');ylabel('$c[n]$');

