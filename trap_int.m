function trap_int(f,x0,x1)
h = x1-x0;
pt1 = (h/2)*(f(x1)+f(x0));
syms x
deriv = diff(f,x,2);
if (-1*deriv(x0))>(-1*deriv(x1))
    pt2 = h^3 / 12 *deriv(x0);
else
    pt2 = h^3 / 12 *deriv(x1);
end
sprintf('%.10f',pt1,pt2)