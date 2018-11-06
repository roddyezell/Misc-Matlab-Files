function truncderiv = truncderiv()

h = realmin
trucderiv = ((1/(1-3*(.577+h)^2))-(1/(1-3*(.577)^2)))/h
