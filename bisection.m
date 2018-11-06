% Bisection
function bisection = bisect(xl,xu,int)

xu(1)=xu;

for i = 1 : int+1;
   
    test = func2(xl)*func2(xu(i))
    
    if test < 0
        xm = (xl+xu(i))/2
        xr(i) = func2(xm)
        xu(i+1) = xm
    elseif test > 0
            xu(i+1) = xu(i-1)
            xl = xm
        else
            break  
    end
    
    
    
end