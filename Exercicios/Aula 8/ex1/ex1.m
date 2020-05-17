set(0, 'defaulttextinterpreter', 'Latex');

[x, fs] = audioread('Blackbird.wav');
x = x(:,1);
%transformada de fourier em tempo discreto
w = [-pi:0.01:pi];
A = exp(-j*w)';
X = zeros(length(w), 1);
for i = 1:length(w)
   for k = 1:length(x)
       X(i, 1) = X(i, 1) + x(k, 1)*A(i, 1)^k;
   end
end
figure();
plot(0:length(x)-1, x);title('$x[n]=x_c(nT)$'),xlabel('$n$'),ylabel('$x[n]$');
figure();
plot(w, abs(X)),title('$TFTD\lbrace x[n]=x_c(nT)\rbrace (\omega)$'),xlabel('$\omega=T\Omega $'),ylabel('$abs(X(e^{j\omega }))$');