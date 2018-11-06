function e = macheps

e = 1

while (e+1) > 1
    e = e/2;
     if (e+1)<=1
      e = e*2;
      break
     end
end

% This function produces the same value as eps(), i.e., 2.2204e-016.