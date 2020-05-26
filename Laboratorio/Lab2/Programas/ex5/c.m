set(0, 'defaulttextinterpreter', 'Latex');

x = [0, 1, 2];
y = [2, 1, -1];
p = polyfit(x, y, 2);
t = 0:0.1:3;
y_fit = polyval(p, t);

figure;
plot(t, y_fit, 'blue');
title("Polinomio interpolar de grau 2");
xlabel("x");
ylabel("y");
grid on;
grid minor;

