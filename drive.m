% ODE Driver
% Function: Drive(solved ODE, f(t,y), tspan, xi, yi, step size)
% Calls euler, midpoint, and RK4 M-files with a for loop
function drive = drive(ft,fxt,tspan,xi,yi,h)



for i = 1 : 5
    
    if i == 1
        disp(['Euler Method'])
        euler(ft,fxt,tspan,xi,yi,h)
    end
    if i == 2
        disp(['Midpoint Method'])
        midode(ft,fxt,tspan,xi,yi,h)
    end
    if i == 3
        disp(['Runge-Kutta 4th Order'])
        RK4(ft,fxt,tspan,xi,yi,h)
    end


end


fplot('exp(((1/4)*t.^4)-1.5*t)',[0,2])
hold on





end