% 17.2 Trapezoidal rule
function trap = trap(func,a,b,n,truval)

h = (b-a)/n;
fsum = 0;
htemp = h;
xa = func(a);
xb = func(b);

for i = 1 : n-1
    fsum = fsum + func(htemp);
    htemp = htemp+h;
end

I = (b-a)*(xa+xb+2*fsum)/(2*n);
Et = ((truval-I)/(truval))*100;

Et = ((Et.^2).^.5); % abs of Et


disp(['I = ', num2str(I), ' ... Error = ', num2str(Et), '%'])

end