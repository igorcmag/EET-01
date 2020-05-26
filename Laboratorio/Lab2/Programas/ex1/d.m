set(0, 'defaulttextinterpreter', 'Latex');

% sin signal

x = @(n, f_s, f_0, phi) sin(2*pi*(f_0/f_s)*n + phi);

f_s = 8*10^3;
f_0 = [7525, 7650, 7775, 7900];
phi = 0;
t = 10*10^(-3);

n_samples = round(t*f_s);

n = 0:1:n_samples;

subplot(2,2,1);
plot(n, x(n, f_s, f_0(1), phi), 'blue');
title("$f_0$ = 7525Hz");
xlabel("n");
ylabel("x[n]");

subplot(2,2,2);
plot(n, x(n, f_s, f_0(2), phi), 'blue');
title("$f_0$ = 7650Hz");
xlabel("n");
ylabel("x[n]");

subplot(2,2,3);
plot(n, x(n, f_s, f_0(3), phi), 'blue');
title("$f_0$ = 7775Hz");
xlabel("n");
ylabel("x[n]");

subplot(2,2,4);
plot(n, x(n, f_s, f_0(4), phi), 'blue');
title("$f_0$ = 7901Hz");
xlabel("n");
ylabel("x[n]");
