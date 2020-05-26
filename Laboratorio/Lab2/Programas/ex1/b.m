set(0, 'defaulttextinterpreter', 'Latex');

% sin signal

x = @(n, f_s, f_0, phi) sin(2*pi*(f_0/f_s)*n + phi);

f_s = 8*10^3;
f_0 = 300;
phi = 0;
t = 10*10^(-3);

n_samples = round(t*f_s);

n = 0:1:n_samples;

figure;
plot(n, x(n, f_s, f_0, phi), 'blue');
title("Onda senoidal amostrada");
legend("x[n] = sin(75\pi\cdot n)");
xlabel("n");
ylabel("x[n]");
