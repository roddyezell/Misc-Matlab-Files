% RK4 ODE Solver
% Function: midode(solved ODE, f(t,y), tspan, xi, yi, step size)

function midode = midode(ft,fxt,tspan,xi,yi,h)


yt = 0;
Et = 0;
y = 1:tspan;
t = 1:tspan;
y(1) = yi;
t(1) = xi;

for i = 1 : tspan
    k(i) = fxt(t(i),y(i));
    k(i+1) = fxt((t(i)+.5*h),(y(i)+.5*k(i)*h));
    y(i+1) = y(i) + k(i+1)*h; 
    t(i+1) = t(i)+h;
end


yt(1) = ft(t(1));
for i = 1 : tspan
    yt(i+1) = ft(t(i)+h);
end

for i = 1 : tspan+1
    t(i+1) = t(i)+h;
    Et(i) = ((((((yt(i)-y(i))/yt(i)))*100).^2).^.5);
    x(i) = i-1;
end

disp(['    t         True y    Midpoint y  |Et|%  h = ', num2str(h)])
disp([x'    yt'     y'   Et' ])

plot(x,y,'o',x,y)
hold on


end