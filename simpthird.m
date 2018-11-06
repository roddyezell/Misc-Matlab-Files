% Simpson's 1/3 rule
function simpthird = simpthird(func,a,b,n,truval)

h = (b-a)/n;
htemp = h;
xa = func(a);
xb = func(b);
v = 0;
v(1) = xa;
v(n) = xb;
xj = 0;
xi = 0;

if n == 1
    I = (b-a)* (func(a) + 4*func(h) + func(b))/6;
    Et = ((truval-I)/(truval))*100;
    disp(['I = ', num2str(I), ' ... Error = ', num2str(Et), '%'])
else

% Assigns function values of step size h to vector 'v'
for i = 2 : n+1      
    
    v(i) = func(htemp);
    htemp = htemp+h;
  
end 

% Two vectors containing the summation of even/odd iterations of 'v'
% are generated. 
for i = 2 : n
    if mod(i,2) == 0        % even iteration
        xj = xj + v(i);
    else                    % odd  iteration
        xi = xi + v(i);
    end
end

    I = (b-a)* (xa+(4*xj)+(2*xi)+xb)/(3*n);
    Et = ((truval-I)/(truval))*100;
    Et = ((Et.^2).^.5); % abs of Et;
    disp(['I = ', num2str(I), ' ... Error = ', num2str(Et), '%'])

end
end