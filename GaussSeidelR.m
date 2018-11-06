% GaussSeidel with relaxation
function x = GaussSeidel(A,b,es,lambda)

xold = [0 0 0];
xnew = [0 0 0];
[m,n] = size(A);
ea = 100;


while ea > es

xnew(1) = b(1)/A(1,1)-((A(1,2)/A(1,1))*xold(2))-((A(1,3)/A(1,1))*xold(3));
xnew(1) = lambda*xnew(1)+(1-lambda)*xold(1);
xnew(2) = (b(2)/A(2,2))- (A(2,1)/A(2,2))*(xnew(1))-((A(2,3)/A(2,2))*xold(3));
xnew(2) = lambda*xnew(2)+(1-lambda)*xold(2);
xnew(3) = (b(3)/A(3,3))-((A(3,1)/A(3,3))*xnew(1))-(A(3,2)/A(3,3))*(xnew(2));
xnew(3) = lambda*xnew(3)+(1-lambda)*xold(3);

ea = ((xnew(1)-xold(1))/xnew(1))*100;

xold = xnew;

end

xnew

end