% False Position
function fpos = fpos(xl,xu,int)

xu(1)=xu;
xl(1)=xl;
xr(1)=0;
k=1;

for i = 1 : int+1;
   
    test = funcs1(xl(i))*funcs1(xu(i));
    
    if test < 0
        xr(i+1) = xu(i)-(funcs1(xu(i))*(xl(i)-xu(i)))/(funcs1(xl(i))-funcs1(xu(i)));
        xu(i+1) = xr(i+1);
        xl(i+1) = xl(i);
        k = k+1;
    elseif test > 0
            xl(i+1) = xu(i);
            xu(i+1) = xu(i-1);
            xr(i+1) = xr(i);
            k = k+1;
        else
            break  
            
    end
end

   it = 1:1:k;
   xlf = funcs1(xl);
   xuf = funcs1(xu);
   xrf = funcs1(xr);

   out = [it' xl' xlf' xu' xuf' xr' xrf'];
   disp('    i         xl       f(xl)      xu        f(xu)     xr        f(xr)')
   disp(out)
   
end
