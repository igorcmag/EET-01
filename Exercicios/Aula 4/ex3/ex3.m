set(0, 'defaulttextinterpreter', 'Latex');

L = 100;
n = -L:L;
% x = x[n]%
x = zeros(length(n), 1);
x(-5+L+1:5+L+1, 1) = [1, 2, -3, 5, 1.5, 2, 3, 0, -2, -3, 1]' + j*[-1, 1, -2, -3, 1.9, 1, 3, -0.5, -1, -2, -1]';
% y = x*[-n]%
y(2*L+1:-1:1, 1) = x; y = conj(y);
% z = x*[n]
z = conj(x);
% xt = x[n - nd] (deslocamento no tempo)
nd = 1;
xt = zeros(length(n), 1);
xt(-5+L+1+nd:5+L+1+nd, 1) = x(-5+L+1:5+L+1, 1);
% xf = exp{jw0n}x[n] (deslocamento na frequencia)
w0 = pi/10;
xf = exp(j*w0*n').*x;
% xinv = x[-n] (inversao no tempo)
xinv = conj(y);

% xdif = nx[n] (diferenciacao em freq)
xdif = n'.*x;

%apresentacao da entrada x[n]
figure();
subplot(2,1,1);stem(-10:10, real(x(-10+L+1:10+L+1, 1)));title('$Real \lbrace x[n]\rbrace$');xlabel('$n$');ylabel('$Real$');
subplot(2,1,2);stem(-10:10, imag(x(-10+L+1:10+L+1, 1)));title('$Imag \lbrace x[n]\rbrace$');xlabel('$n$');ylabel('$Imag$');

%TFTD{x[n]}, TFTD{x*[-n], TFTD{x*[n]}, TFTD{x[n-nd], TFTD{exp{jw0n}x[n]}
w = -pi/2:pi/L:pi/2;
TFTDX = zeros(length(w),1);TFTDY = zeros(length(w),1);TFTDZ = zeros(length(w),1);TFTDXT = zeros(length(w),1);
TFTDXF = zeros(length(w),1);TFTDXINV = zeros(length(w),1);TFTDXDIF = zeros(length(w),1);
A = exp(-j*w');
for i=1:1:length(w)
    for k=-L:L
        TFTDX(i,1) = TFTDX(i,1) + x(k+L+1,1)*A(i,1)^k;TFTDY(i,1) = TFTDY(i,1) + y(k+L+1,1)*A(i,1)^k;
        TFTDZ(i,1) = TFTDZ(i,1) + z(k+L+1,1)*A(i,1)^k;TFTDXT(i,1) = TFTDXT(i,1) + xt(k+L+1,1)*A(i,1)^k;
        TFTDXF(i,1) = TFTDXF(i,1) + xf(k+L+1,1)*A(i,1)^k;TFTDXINV(i,1) = TFTDXINV(i,1) + xinv(k+L+1,1)*A(i,1)^k;
        TFTDXDIF(i,1) = TFTDXDIF(i,1) + xdif(k+L+1,1)*A(i,1)^k;
    end
end
%comparacao TFTD{x[n]} e TFTD{x*[-n] (simetria 1)
figure()
subplot(2,2,1);plot(w, real(TFTDX));title('$TFTD \lbrace x[n]\rbrace$');xlabel('$\omega$');ylabel('$Real$');
subplot(2,2,2);plot(w, imag(TFTDX));title('$TFTD \lbrace x[n]\rbrace$');xlabel('$\omega$');ylabel('$Imag$');
subplot(2,2,3);plot(w, real(TFTDY));title('$TFTD \lbrace x*[-n]\rbrace$');xlabel('$\omega$');ylabel('$Real$');
subplot(2,2,4);plot(w, imag(TFTDY));title('$TFTD \lbrace x*[-n]\rbrace$');xlabel('$\omega$');ylabel('$Imag$');

%comparacao TFTD{x[n]} e TFTD*{x*[n]} (simetria 2)
figure()
subplot(2,2,1);plot(w, real(TFTDX));title('$TFTD \lbrace x[n]\rbrace$');xlabel('$\omega$');ylabel('$Real$');
subplot(2,2,2);plot(w, imag(TFTDX));title('$TFTD \lbrace x[n]\rbrace$');xlabel('$\omega$');ylabel('$Imag$');
subplot(2,2,3);plot(w, real(conj(TFTDZ)));title('$TFTD* \lbrace x*[n]\rbrace$');xlabel('$\omega$');ylabel('$Real$');
subplot(2,2,4);plot(w, imag(conj(TFTDZ)));title('$TFTD* \lbrace x*[n]\rbrace$');xlabel('$\omega$');ylabel('$Imag$');

%comparacao TFTD{x[n-nd]} e exp{-jwnd}*TFTD{x[n]} (deslocamento no tempo)
figure()
subplot(2,2,1);plot(w, abs(TFTDXT));title('$TFTD \lbrace x[n-n_d]\rbrace$');xlabel('$\omega$');ylabel('$Abs$');
subplot(2,2,2);plot(w, angle(TFTDXT));title('$TFTD \lbrace x[n-n_d]\rbrace$');xlabel('$\omega$');ylabel('$Angle$');
subplot(2,2,3);plot(w, abs(exp(-j*w'*nd).*TFTDX));title('$e^{-jw_0n_d}TFTD \lbrace x[n]\rbrace$');xlabel('$\omega$');ylabel('$Abs$');
subplot(2,2,4);plot(w, angle(exp(-j*w'*nd).*TFTDX));title('$e^{-jw_0n_d}TFTD \lbrace x[n]\rbrace$');xlabel('$\omega$');ylabel('$Angle$');

%comparacao TFTD{x[n]} e TFTD{exp{jw0n}*x[n]} (deslocamento na frequencia)
figure()
subplot(2,2,1);plot(w, real(TFTDX));title('$TFTD \lbrace x[n]\rbrace$');xlabel('$\omega$');ylabel('$Real$');
subplot(2,2,2);plot(w, imag(TFTDX));title('$TFTD \lbrace x[n]\rbrace$');xlabel('$\omega$');ylabel('$Imag$');
subplot(2,2,3);plot(w, real(TFTDXF));title('$TFTD \lbrace e^{jw_0n}x[n]\rbrace$');xlabel('$\omega$');ylabel('$Real$');
subplot(2,2,4);plot(w, imag(TFTDXF));title('$TFTD \lbrace e^{jw_0n}x[n]\rbrace$');xlabel('$\omega$');ylabel('$Imag$');

%comparacao TFTD{x[n]} e TFTD{x[-n]} (reversao no tempo)
figure()
subplot(2,2,1);plot(w, real(TFTDX));title('$TFTD \lbrace x[n]\rbrace$');xlabel('$\omega$');ylabel('$Real$');
subplot(2,2,2);plot(w, imag(TFTDX));title('$TFTD \lbrace x[n]\rbrace$');xlabel('$\omega$');ylabel('$Imag$');
subplot(2,2,3);plot(w, real(TFTDXINV));title('$TFTD \lbrace x[-n]\rbrace$');xlabel('$\omega$');ylabel('$Real$');
subplot(2,2,4);plot(w, imag(TFTDXINV));title('$TFTD \lbrace x[-n]\rbrace$');xlabel('$\omega$');ylabel('$Imag$');

%comparacao TFTD{nx[n]} e jTFTD{x[n]} (diferenciacao em frequencia)
figure()
subplot(2,2,1);plot(w, real(TFTDXDIF));title('$TFTD \lbrace nx[n]\rbrace$');xlabel('$\omega$');ylabel('$Real$');
subplot(2,2,2);plot(w, imag(TFTDXDIF));title('$TFTD \lbrace nx[n]\rbrace$');xlabel('$\omega$');ylabel('$Imag$');
subplot(2,2,3);plot(w, real(j*TFTDX));title('$j\cdot TFTD \lbrace x[n]\rbrace$');xlabel('$\omega$');ylabel('$Real$');
subplot(2,2,4);plot(w, imag(j*TFTDX));title('$j\cdot TFTD \lbrace x[n]\rbrace$');xlabel('$\omega$');ylabel('$Imag$');