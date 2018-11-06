function natspline = natspline(x,y)
% A{x} = {c}

n = length(x);

% Generate h's
for i = 1 : n-1
    h(i) = x(i+1)-x(i);
end

% Divided differences
for i = 1 : n-1 
    f(i) = (y(i+1)-y(i))/(x(i+1)-x(i));
end

% Generate solutions's
c(1) = 0;
c(n) = 0;
for i = 1 : n-2
        c(i+1) = 3.*(f(i+1)-f(i));
end

% Generate matrix A
A = zeros(n,n);
A(1,1) = 1;
A(n,n) = 1;
for i = 2 : n-1
    for j = 1 : n
        if (i == j+1)
            A(i,j) = h(j);
        end
        if (i == j)
            A(i,j) = 2*(h(i-1)+(h(i)));
        end
        if (i == j-1)
            A(i,j) = h(i);
        end
    end
end

% Solve for x's
x = A\c';
x'

% Generate b's
for i = 1 : n-1
    b(i) = ((y(i+1)-y(i))/h(i)) + (h(i)*(2*(x(i)) + x(i+1)))/3;
end

% Generate d's
for i = 1 : n-1
    d(i) = (x(i+1)-x(i))/(3*h(i));
end

end