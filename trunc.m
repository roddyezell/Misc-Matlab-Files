% 4.16 Forward/Backward/Central difference approximations

function trunc = trunc(x,h)

forward = (poly1(x+h) - poly1(x))/h
backward = (poly1(x) - poly1(x-h))/h
central = (poly1(x+h) - poly1(x-h))/(2*h)

forward_error = sqrt(((283-forward)/(283))^2)*100
backward_error = sqrt(((283-backward)/(283))^2)*100
central_error = sqrt(((283-central)/(283))^2)*100

end