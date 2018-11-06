function sec = sec(xl,xu)
xr = xu -(func2(xu)*(xl-xu))/(func2(xl)-func2(xu))
end