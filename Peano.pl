/*
Giuseppe Peano

Represent Numbers with a symbol 0
n(Number) -> Next to number 'Number'

0 - 0
1 - n(0)
2 - n(n(0))
3 - n(n(n(0)))
...

p(n0)
p(n-1) -> p(n)
p(n):- p(n-1).

add(x, y, z)
	is true if z unify with a number in Peano Arithmetic that represents x+y

*/

add(0, Y, Y).

add(n(X), Y, n(Z)):- add(X, Y, Z).