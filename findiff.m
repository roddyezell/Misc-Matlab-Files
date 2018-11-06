function findiff = findiff(x,h)

for i = 2:1:10

format long
central(i) = (cos(x+h)-cos(x-h))/(2*h);
h = h/10;
error(i) = abs((-.5-central(i)));
step(i) = h;

end 

L = [step' central' error'];
fprintf('  step size     finite difference    true error\n');
fprintf('%14.10f %16.14f %16.13f\n',L);
loglog(step,error), xlabel('Step Size'),ylabel('Error')
title('Plot of Error Versus Step Size')
format short

end