set(0, 'defaulttextinterpreter', 'Latex');

n = 0:1000;
c1 = cos((3/320)*pi*(n.^2)' + pi*n');
plot(n, c1);title('$c[n]$ plot');xlabel('$n$');ylabel('$c[n]$');


