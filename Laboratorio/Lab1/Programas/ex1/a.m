set(0, 'defaulttextinterpreter', 'Latex');

%sequencia 1
L = 20;
nn = 1:20;
x1 = zeros(L,1);x1(5) = 0.9;
subplot(2,2,1);stem(nn, x1);title('Sequencia 1');xlabel('$n$');ylabel('$x_1[n]$');

%sequencia 2
L = 31;
nn = -15:15;
x2 = zeros(L, 1);x2(16) = 0.8;
subplot(2,2,2);stem(nn, x2);title('Sequencia 2');xlabel('$n$');ylabel('$x_2[n]$');

%sequencia 3
L = 51;
nn = 300:350;
x3 = zeros(L, 1);x3(34) = 1.5;
subplot(2,2,3);stem(nn, x3);title('Sequencia 3');xlabel('$n$');ylabel('$x_3[n]$');

%sequencia 4
L = 11;
nn = -10:0;
x4 = zeros(L, 1);x4(4) = 4.5;
subplot(2,2,4);stem(nn, x4);title('Sequencia 4');xlabel('$n$');ylabel('$x_4[n]$');