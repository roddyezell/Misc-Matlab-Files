% Bisection
% func2 = -0.15x^3 + 1.5x^2 - 5.25x + 5.9 = 0
function bisection = bisect(xl,xu,int)


xu(1)=xu;
xl(1)=xl;
xm(1)=0;
xr(1)=0;
k=1;

for i = 1 : int+1;
   
    test = func2(xl(i))*func2(xu(i));
    
    if test < 0
        xm(i+1) = (xl(i)+xu(i))/2;
        xr(i+1) = func2(xm(i+1));
        xu(i+1) = xm(i+1);
        xl(i+1) = xl(i);
        k = k+1;
    elseif test > 0
            xl(i+1) = xu(i);
            xu(i+1) = xu(i-1);
            k = k+1;
        else
            break  
            
    end
end

   it = 1:1:k;
   xlf = func2(xl);
   xuf = func2(xu);
   
   out = [it' xl' xlf' xu' xuf' xm' xr'];
   disp('    i         xl       f(xl)      xu        f(xu)     xm        f(xr)')
   disp(out)
   
end
