#1.
a <- expression(4*x^3 + 2*x^2 - x + 7)
print(Deriv(a, "x"))
print(eval(Deriv(a, "x"), list(x = 2)))

#2.
b <- expression(x^2 + 2*x*y + y^2)
print(Deriv(b, "x"))
print(Deriv(b, "y"))

gradient_b <- c(Deriv(b, "x"), Deriv(b, "y"))
print(gradient_b)

ATK <- expression(2*x + 3*y)
print(Deriv(ATK, "x"))
print(Deriv(ATK, "y"))
print(eval(ATK, list(x = 10, y = 5)))