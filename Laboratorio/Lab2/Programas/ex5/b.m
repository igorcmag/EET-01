set(0, 'defaulttextinterpreter', 'Latex');

x = [2, 0, 0, 0, 0, 1, 0, 0, 0, 0, -1];
resposta = [0.2, 0.4, 0.6, 0.8, 1.0, 0.8, 0.6, 0.4, 0.2];
y = conv(x, resposta);

figure;
plot(0:2/18:2, y, 'blue');
title("Resposta ao impulso triangular");
xlabel("x");
ylabel("y");
grid on;
grid minor;

