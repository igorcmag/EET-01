set(0, 'defaulttextinterpreter', 'Latex');

%entrada exponencial%
L = 50;
a = 0.9;
n = 1:L;
x = a.^n';
%transformada de fourrier da entrada exponencial%
w = 0:pi/100:2*pi;
X = (1 - a*exp(j*w')).^(-1);
%plot%
figure();
subplot(3,1,1);stem(n, x);title('$x[n]=a^nu[n]$');xlabel('$n$');ylabel('$u[n]$');
subplot(3,1,2);plot(w, abs(X));title('Amplitude');xlabel('$\omega$');ylabel('$\mid X(e^{j\omega}\mid$');
subplot(3,1,3);plot(w, angle(X));title('Fase');xlabel('$\omega$');ylabel('$\angle X(e^{j\omega})$');

%entrada complexa%
L = 100;
n2 = -L:L;
w = 0:pi/L:2*pi;
w0 = (pi/4)*ones(1,length(w));
x2 = exp(j*w0*n2');
X2 = zeros(length(w),1);
A = exp(j*(w-w0)');
for i=1:1:length(w)
    for k=-L:L
        X2(i,1) = X2(i,1) + A(i,1)^k;
    end
end
figure();
subplot(2,1,1);plot(w, abs(X2));title('$Amplitude$');xlabel('$\omega$');ylabel('$\mid X(e^{j\omega}\mid$');
subplot(2,1,2);plot(w, angle(X2));title('$Fase$');xlabel('$\omega$');ylabel('$\angle X(e^{j\omega})$');

    
    
