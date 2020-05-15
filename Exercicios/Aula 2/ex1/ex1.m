set(0, 'defaulttextinterpreter', 'Latex');

L = 20;
N = 10;
n = -2*L:2*L;
a = 1.01;

%-----h[n]-----
h = zeros(4*L+1,1);
h(2*L+1:2*L+N,1) = 1;
subplot(3,1,1);stem(n, h);title('$h[n] = u[n] - u[n - N]$');xlabel('$n$');ylabel('$h[n]$');

%-----x[n]-----
x = zeros(4*L+1,1);
x(2*L+1:4*L+1,1) = a.^(0:2*L)'
subplot(3,1,2);stem(n, x);title('$x[n] = a^nu[n]$');xlabel('$n$');ylabel('$x[n]$');

%-----y[n]-----
y = zeros(2*L+1,1);
ny = -L:L;
for i=1:2*L+1
    for k = -L:L
        y(i,1) = y(i,1) + h(k + 2*L + 1, 1)*x(i - k + L, 1);
    end
end
subplot(3,1,3);stem(ny, y);title('$y[n] = h[n]\ast x[n]$');xlabel('$n$');ylabel('$y[n]$');