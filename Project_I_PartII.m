%% Inputs

syms t;

m = 1; % mass in kg
c = 12; % dampening coefficient in Ns/m
k = 0.7; % stiffness in N/m
g = 9.81; % m/s^2

iv_1 = 'Dy(0) = 0';
iv_2 = 'y(0) = 1.0';

m = num2str(m);
c = num2str(c);
k = num2str(k);
g = num2str(g);

%% Code

ode_eqn = [m '*D2y+' c '*Dy+' k '*y=' m '*' g];
func = ['The ODE to be solved is ' ode_eqn];
inc = ['The initial conditions are ' iv_1 ' and ' iv_2];

fprintf('%s\n%s\n',func,inc)

soln = dsolve(ode_eqn,iv_1,iv_2,'t');
soln = vpa(soln,5)

yp = diff(soln,'t') % velocity vs time
tt = [0:0.1:10];

% Find the time at which the y value will be equal to 0.1
solve(soln,t)


%% Results

plot(tt, double(subs(soln,'t',tt)),'b', tt, double(subs(yp,'t',tt)),'r')
title ('Position/Velocity of Spring vs Time')
xlabel('Time (s)')
ylabel('y(t) (m)')


