% Smallest possible real number
% Just greater than zero, any number smaller will be considered to be zero

function spr = spr()

e = 1; 
while e > 0
    spr = e;
    e = e/2;
    if e == 0
        break
    end
end


% spr is continuously re-assigned as 'e' so long as 'e' is not zero.  


