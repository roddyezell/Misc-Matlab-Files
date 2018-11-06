% Newton-Rhapson Method
% func3 = func3 = 7.*sin(x).*(2.71828183.^(-x))-1;
% func3deriv = 7*2.71828183.^(-x)*(cos(x)-sin(x));

function newtraps = newtraps(xi, int)

x(1)=xi;

for i = 1 : int
    
    x(i+1)=x(i)-((func3(x(i))/func3deriv(x(i))));

end

itt = 1:1:int+1;

out = [itt' x'];
disp('    i         xi')
disp(out)

end