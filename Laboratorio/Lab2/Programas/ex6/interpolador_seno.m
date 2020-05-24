function f = interpolador_seno(x, n, Ts)
syms t;
f(t) = 0*t;
for i=1:length(n);
   f(t) = f(t) + x(i)*sin(pi*(t - n(i)*Ts)/Ts)/(pi*(t - n(i)*Ts)/Ts); 
end