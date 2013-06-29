---
layout: default
title: Triangular Numbers and other Sums
headline: 
abstract: |
    Triangular numbers are of the form T(N) = 1 + 2 + ... + N.  This post 
    dscribes a procedure for summing general series of the form 
    S(k,N) = 1 + 2^k + 3^k + ... + N^k. 
---
The Nth [triangular number](http://en.m.wikipedia.org/wiki/Triangular_number), 
T(N), is equal to the sum of the positive integers from
1 to N, i.e.

    T(N) = 1 + 2 + ... + N

Here we consider summing a general series of the form 

    S(k,N) = 1^k + 2^k + ... + N^k = f(1) + f(2) + ... + f(N)
    where
    f(n) = n^k 

The trick is to find a function g(n) such that 

    f(n+1) = g(n+1) - g(n)
    so that 
    S(k,N) = f(1) + f(2) + ... + f(N)
           = f(1) + (g(2) - g(1)) + (g(3) - g(2)) + ... + (g(N-1) - g(N-2)) + (g(N) - g(N-1))
           = f(1) + g(N) - g(1)

i.e. all the intermediate ladder terms in the sum of g() terms cancel.

Consider k=1, the triangular numbers:

    f(n+1) = n+1
    Let g(n) = a0*n^2 + a1*n + a2
    Then 
    g(n+1) - g(n) = a0*(n^2 + 2*n +1 -n^2) 
                    + a1*(n + 1 - n)
                    + a2*(1 - 1)
                  = a0*(2*n + 1) + a1
                  = f(n+1) = n+1

Solving for a0 and a1 gives g(n) = 1/2*(n^2 + n) so S(1,N) = 1/2*(N^2 + N).
The matrix form of solving for the coefficients is worth considering as it follows
for higher values of k:

    [2 0; 1 1]*[a0; a1] = [1;1]

For example, for k=2 we solve the following equation for vector a:

    [3 0 0; 3 2 0; 1 1 1]*a = [1; 2; 1]

which gives S(2,N) = 1/6*(2*n^3 + 3*n^2 + n)

Exercise for the reader: think about the relationship between the columns of 
the matrix and [Pascal's triangle](http://en.m.wikipedia.org/wiki/Pascals_triangle).
Also consider the convolution of the vector [1;1] with itself.  Can you see any patterns?

##Summary
This method is the difference equation equivalent of finding the antiderivative of a 
function to evaluate an integral in calculus.  
['Advanced Mathematical Techniques for Scientists and Engineers'](http://www.amazon.co.uk/Advanced-Mathematical-Methods-Scientists-Engineers/dp/0387989315)
by C. Bender and S. Orszag is a good reference for this technique and many other useeful tricks.
