function linearfit = regress(x, y)

z = length(x);
xSum = 0;
ySum = 0;
xySum = 0;
xSqr = 0;

for i = 1 : z
   xSum = xSum + log10(x(i));
   ySum = ySum + log10(y(i));
   xySum = xySum + log10(x(i))*log10(y(i));
   xSqr = xSqr + log10(x(i))*log10(x(i));
end

xbar = xSum/z;
ybar = ySum/z;

a1 = (z*xySum - xSum*ySum)/(z*xSqr - xSum*xSum);
a0 = ybar-(a1*xbar);
alpha = 10^a0;

power = alpha*x.^(a1);

i = 0:10:150;
power2 = alpha*i.^(a1);

A = [num2str(alpha), '*W^', num2str(a1)]

sx = sum(x); sy = sum(y); sxx = sum(x.*x); 
sxy = sum(x.*y); syy = sum(y.*y);


alpha
beta = a1
r = ((z*sxy) - (sx*sy))/(((z*sxx-((sx).^2)).^.5)*((z*syy-((sy).^2)).^.5))
r2 = r.^2



%subplot(2,1,1), plot(x,y,'.',i,power2)
%xlabel('x-axis')
%ylabel('y-axis')
%title('Untransformed regression fit')

%subplot(2,1,2), plot(log10(x),log10(y),'.',log10(x),log10(power))
%xlabel('log(x)')
%ylabel('log(y)')
%title('Linearized data with linear regression fit')

end