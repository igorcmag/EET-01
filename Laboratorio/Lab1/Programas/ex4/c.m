set(0, 'defaulttextinterpreter', 'Latex');

%sequencia 1
n1 = 0 : 20; 
x1 = 3*exp(j*((-pi/7)*n1 + (pi/2)*ones(1, length(n1))));
subplot(2,2,1);plot(real(x1), imag(x1));title('Sequencia 1');xlabel('Real part');ylabel('Imaginary part');

%sequencia 2
n2 = -15 : 25; 
x2 = real(exp(j*((-pi/17)*n2 + (pi/2)*ones(1, length(n2)))));
subplot(2,2,2);stem(n2, x2);title('Sequencia 2');xlabel('$n$');ylabel('$x_2[n]$');

%sequencia 3
n3 = 0 : 50; 
x3 = exp(n3).^(log(1.1)).*real(exp(j*((pi/11)*n3 + (pi/4)*ones(1, length(n3)))));
subplot(2,2,3);stem(n3, x3);title('Sequencia 3');xlabel('$n$');ylabel('$x_3[n]$');

%sequencia 4
n4 = -10 : 20; 
x4 = exp(n4).^(log(0.9)).*real(exp((pi/11)*n4*j));
subplot(2,2,4);stem(n4, x4);title('Sequencia 4');xlabel('$n$');ylabel('$x_4[n]$');