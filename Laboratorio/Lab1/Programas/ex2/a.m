set(0, 'defaulttextinterpreter', 'Latex');

%sequencia 1
L = 21;
nn = 0:20;
x1 = sin((pi/17)*nn);
subplot(2,2,1);stem(nn, x1);title('Sequencia 1');xlabel('$n$');ylabel('$x_1[n]$');

%sequencia 2
L = 41;
nn = -15:25;
x2 = sin((pi/17)*nn);
subplot(2,2,2);stem(nn, x2);title('Sequencia 2');xlabel('$n$');ylabel('$x_2[n]$');

%sequencia 3
L = 21;
nn = -10:10;
x3 = sin((pi/17)*nn + (pi/2)*ones(L,1));
subplot(2,2,3);stem(nn, x3);title('Sequencia 3');xlabel('$n$');ylabel('$x_3[n]$');

%sequencia 4
L = 51;
nn = 0:50;
x4 = cos((pi/sqrt(23))*nn);
subplot(2,2,4);stem(nn, x4);title('Sequencia 4');xlabel('$n$');ylabel('$x_4[n]$');