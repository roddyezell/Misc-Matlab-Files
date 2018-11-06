function cubic = cuecurve(x,y)

z = length(x);
a = zeros(4,4);
b = zeros(1,4);
ysqr = 0;

for i = 1 : z

a(1,2) = a(1,2)+x(i); % xi sum
a(1,3) = a(1,3)+(x(i).^2); % xi^2 sum
a(1,4) = a(1,4)+(x(i).^3); % xi^3 sum
a(2,4) = a(2,4)+(x(i).^4); % xi^4 sum
a(3,4) = a(3,4)+(x(i).^5); % xi^5 sum
a(4,4) = a(4,4)+(x(i).^6); % xi^6 sum

b(1,1) = b(1,1)+y(i); % yi
b(1,2) = b(1,2)+(x(i)*y(i)); %xi*yi
b(1,3) = b(1,3)+((x(i).^2)*y(i)); 
b(1,4) = b(1,4)+((x(i).^3)*y(i));

ysqr = ysqr + y(i).^2;

end

a(1,1) = z;
a(2,1) = a(1,2);
[a(2,2), a(3,1)] = deal(a(1,3));
[a(2,3), a(3,2), a(4,1)] = deal(a(1,4));
[a(3,3), a(4,2)] = deal(a(2,4));
a(4,3) = a(3,4);

a; % coefficient matrix
t = a\b' % solution matrix
r = (z*b(1,2) - a(1,2)*b(1,1))/((z*a(1,3)-((a(1,2)).^2)*((z*ysqr)-(b(1,1)).^2).^.5).^.5)

i = 2:.01:15;
cubic = t(1,1)+t(2,1)*i+t(3,1)*(i.^2)+t(4,1)*(i.^3);

plot(x,y,'.',i,cubic)
xlabel('x')
ylabel('y')
title('14.3')






end
