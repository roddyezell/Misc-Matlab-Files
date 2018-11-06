% RK4 ODE Solver
% Function: RK4(solved ODE, f(t,y), tspan, xi, yi, step size)

function RK4 = RK4(ft,fxt,tspan,xi,yi,h)


yt = 0;
Et = 0;
y = 1:tspan;
t = 1:tspan;
y(1) = yi;
t(1) = xi;

for i = 1 : tspan
    k(i) = fxt(t(i),y(i));                                   %k1
    k(i+1) = fxt((t(i)+.5*h),(y(i)+.5*k(i)*h));              %k2
    k(i+2) = fxt((t(i)+.5*h),(y(i)+.5*k(i+1)*h));            %k3
    k(i+3) = fxt((t(i)+h),(y(i)+k(i+2)*h));                  %k4
    y(i+1) = y(i) + (1/6)*(k(i)+2*k(i+1)+2*k(i+2)+k(i+3))*h;
    t(i+1) = t(i)+h;
end


yt(1) = ft(t(1));
for i = 1 : tspan+1
    yt(i) = ft(t(i));
    t(i+1) = t(i)+h;
end

for i = 1 : tspan+1
    t(i+1) = t(i)+h;
    Et(i) = ((((((yt(i)-y(i))/yt(i)))*100).^2).^.5);
    x(i) = i-1;
end

disp(['    t         True y    RK4 y     |Et|%     h = ', num2str(h)])
disp([x'    yt'     y'   Et' ])


plot(x,y,'d',x,y)
hold on

end