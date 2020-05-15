set(0, 'defaulttextinterpreter', 'Latex');

L = 10;   
n = -L:L; %indices

%pulso unitario
delta = zeros(2*L + 1, 1);
delta(L,1) = 1;
subplot(2,1,1);stem(n, delta);title('Pulso unitario');xlabel('$n$');ylabel('$\delta [n]$');

%degrau unitario
degrau = zeros(2*L + 1, 1);
degrau(L+1:2*L+1,1) = 1;
subplot(2,1,2);stem(n, degrau);title('Degrau unitario');xlabel('n');ylabel('$u[n]$');

%exponenciais
alpha1 = 1.1; alpha2 = 0.9; alpha3 = -0.9; alpha4 = -1.1;
A = 1;
exponencial1 = A*(alpha1.^n').*degrau;
exponencial2 = A*(alpha2.^n').*degrau;
exponencial3 = A*(alpha3.^n').*degrau;
exponencial4 = A*(alpha4.^n').*degrau;
figure()
subplot(2,2,1);stem(n, exponencial1);title('Exponencial com $1<\alpha$');xlabel('$n$');ylabel('$x[n]$');
subplot(2,2,2);stem(n, exponencial2);title('Exponencial com $0<\alpha<1$');xlabel('$n$');ylabel('$x[n]$');
subplot(2,2,3);stem(n, exponencial3);title('Exponencial com $-1<\alpha<1$');xlabel('$n$');ylabel('$x[n]$');
subplot(2,2,4);stem(n, exponencial4);title('Exponencial com $\alpha<-1$');xlabel('$n$');ylabel('$x[n]$');