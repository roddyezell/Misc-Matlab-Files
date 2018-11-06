% Bideflect
function bisection = bisect(xl,xu,int)

xu(1)=xu;
xl(1)=xl;
xm(1)=0;
xr(1)=0;
k=1;

for i = 1 : int+1;
   
    test = maxdeflect(xl(i))*maxdeflect(xu(i));
    
    if test < 0
        xm(i+1) = (xl(i)+xu(i))/2;
        xr(i+1) = maxdeflect(xm(i+1));
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
   xlf = maxdeflect(xl);
   xuf = maxdeflect(xu);
   
   out = [it' xl' xlf' xu' xuf' xm' xr'];
   disp('    i         xl       f(xl)      xu        f(xu)     xm        f(xr)')
   disp(out)
   
end
