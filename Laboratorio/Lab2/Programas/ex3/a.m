set(0, 'defaulttextinterpreter', 'Latex');

% sin signal

x = @(t, f_0, phi) sin(2*pi*f_0*t + phi);

f_s = [20*10^3, 4.5*10^3, 1.4*10^3];
f_0 = 2*10^3;
phi = 0;
t_total = 5;

t_1 = 0:1/f_s(1):t_total;
t_2 = 0:1/f_s(2):t_total;
t_3 = 0:1/f_s(3):t_total;

figure;
subplot(2,2,1);
plot(t_1, x(t_1, f_0, phi), 'blue');
title("$f_s$ = 20kHz");
xlabel("t(s)");
ylabel("x(t)");
xlim([0, 0.01]);

subplot(2,2,2);
plot(t_2, x(t_2, f_0, phi), 'blue');
title("$f_s$ = 4.5kHz");
xlabel("t(s)");
ylabel("x(t)");
xlim([0, 0.01]);

subplot(2,2,3);
plot(t_3, x(t_3, f_0, phi), 'blue');
title("$f_s$ = 1.4kHz");
xlabel("t(s)");
ylabel("x(t)");
xlim([0, 0.01]);

%soundsc(x(t_1, f_0, phi), f_s(1));
%soundsc(x(t_2, f_0, phi), f_s(2));
%soundsc(x(t_3, f_0, phi), f_s(3));

