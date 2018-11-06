function multireg = multireg(z)

x = length(z);


sx1 = sum(x1); sx2 = sum(x2); sy = sum(y);
sx1x2 = sum(x1*x2); sumx1y = sum(x1*y); sumx2y = sum(x2*y)
sx1x1 = sum(x1*x1); sx2x2 = sum(x2*x2);

a = [z sx1 sx2; sx1 sx1x1 sx1x2; sx2 sx1x2 sx2x2];
b = [sy sx1y sx2y];

t = a\b

end