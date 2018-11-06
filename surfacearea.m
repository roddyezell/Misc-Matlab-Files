function area = surfacearea(R)
global V
area = pi*R*sqrt((R^2)+((3*V)/(pi*(R^2)))^2)