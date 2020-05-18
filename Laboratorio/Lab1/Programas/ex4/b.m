set(0, 'defaulttextinterpreter', 'Latex');

nn = 0 : 20;
%theta = pi/2
xx1= exp(nn).^(log(0.9)).*exp(j*(pi/2)*nn); 
subplot(2,2,1);plot(imag(xx1), real(xx1));title('$\pi/2$');xlabel('Real part');ylabel('Imaginary part');

%theta = pi/3
xx2= exp(nn).^(log(0.9)).*exp(j*(pi/3)*nn); 
subplot(2,2,2);plot(imag(xx2), real(xx2));title('$\pi/3$');xlabel('Real part');ylabel('Imaginary part');

%theta = pi/4
xx3= exp(nn).^(log(0.9)).*exp(j*(pi/4)*nn); 
subplot(2,2,3);plot(imag(xx3), real(xx3));title('$\pi/4$');xlabel('Real part');ylabel('Imaginary part');

%theta = pi/5
xx4= exp(nn).^(log(0.9)).*exp(j*(pi/5)*nn); 
subplot(2,2,4);plot(imag(xx4), real(xx4));title('$\pi/5$');xlabel('Real part');ylabel('Imaginary part');