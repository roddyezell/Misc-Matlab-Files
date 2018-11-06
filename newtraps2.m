% Newton-Rhapson Method for 6.11
% func3 = func4 = tanh((x.^2)-9);
% func4deriv = (525279753*x*(2.71828183^(2*(x^2))))
%               /(((2.71828183^(2*(x^2)))+65659969.1)^2);


function newtraps = newtraps(xi, int)

x(1)=xi;

for i = 1 : int
    
    x(i+1)=x(i)-((func4(x(i))/func4deriv(x(i))));

end

itt = 1:1:int+1;
xf = func4(x);

out = [itt' x' xf'];
disp('    i         xi        f(xi)')
disp(out)


plot(x, func4deriv(x))

end