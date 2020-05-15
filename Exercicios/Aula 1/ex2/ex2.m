set(0, 'defaulttextinterpreter', 'Latex');

L = 10;
nx = -L:L;

%-----sistema atrasador ideal------
%parametros do sistema
nd = 2;
%entrada%
x = sin(nx');
%saida
y = x;
ny = nx + nd;
%plot
figure(); 
subplot(2,1,1);stem(nx, x);title('Entrada');xlabel('$n$');ylabel('$x[n]$');
subplot(2,1,2);stem(ny, y);title('Saida');xlabel('$n$');ylabel('$y[n]$');

%-----sistema acumulador------
%entrada
x = ones(2*L + 1, 1);
%saida
y = x;
for i = 2:length(nx)
    y(i,1) = y(i,1) + y(i-1,1);
end
%plot 
figure(); 
subplot(2,1,1);stem(nx, x);title('Entrada');xlabel('$n$');ylabel('$x[n]$');
subplot(2,1,2);stem(ny, y);title('Saida');xlabel('$n$');ylabel('$y[n]$');

%-----sistema quadrador (nao linear) ------
%entrada
x = -L:L;
%saida
y = x.^2;
%plot 
figure(); 
subplot(2,1,1);stem(nx, x);title('Entrada');xlabel('$n$');ylabel('$x[n]$');
subplot(2,1,2);stem(ny, y);title('Saida');xlabel('$n$');ylabel('$y[n]$');
