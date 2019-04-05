t=linspace(-3,2*pi,200);
z=(-2*cos(t+2*pi*100*i)-2*sin(t+2*pi*100*i));
plot(z)
hold on
plot(log(2)+i*pi,0,'o')
grid on
xlabel('x')
ylabel('y')
title('Curva en el plano complejo')