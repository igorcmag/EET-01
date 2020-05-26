set(0, 'defaulttextinterpreter', 'Latex');

% sin signal

x = @(t, mu, f_l, phi) cos(pi*mu*t.^2 + 2*pi*f_l*t + phi);

f_s = [20*10^3, 8.5*10^3, 3.4*10^3];
f_l = 2*10^3;
mu = 0.5*10^3;
phi = 0;
t_total = 5;

t_1 = 0:1/f_s(1):t_total;
t_2 = 0:1/f_s(2):t_total;
t_3 = 0:1/f_s(3):t_total;

figure;
subplot(2,2,1);
plot(t_1, x(t_1, mu, f_l, phi), 'blue');
title("$f_s$ = 20kHz");
xlabel("t(s)");
ylabel("x(t)");
xlim([0, 0.01]);

subplot(2,2,2);
plot(t_2, x(t_2, mu, f_l, phi), 'blue');
title("$f_s$ = 8.5kHz");
xlabel("t(s)");
ylabel("x(t)");
xlim([0, 0.01]);

subplot(2,2,3);
plot(t_3, x(t_3, mu, f_l, phi), 'blue');
title("$f_s$ = 3.4kHz");
xlabel("t(s)");
ylabel("x(t)");
xlim([0, 0.01]);

%soundsc(x(t_1, mu, f_l, phi), f_s(1));
%soundsc(x(t_2, mu, f_l, phi), f_s(2));
soundsc(x(t_3, mu, f_l, phi), f_s(3));

