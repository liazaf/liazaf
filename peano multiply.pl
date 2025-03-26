/* 

multiply (?x, ?y, ?r)
	is true if r unify with a number in peano arithmetic representation that represents the result of x*y.

*/


multiply(_, 0, 0).

multiply(X, n(Y), R):- multiply(X, Y, Z), add(X, Z, R).



/* 

p2d(?Peano, ?Decimal)
	is true if Decimal is the Decimal number that represents peano number. 
	
	1) p(n0)
	2) p(n-1) -> p(n)

*/

p2d(0, 0).

p2d(n(X), R2):- p2d(X, R), R2 is R + 1.
