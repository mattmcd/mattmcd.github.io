---
layout: default
title: FX Arbitrage Detection using Linear Programming 
headline: FX Arbitrage Detection using Linear Programming  
abstract: | 
  Linear programming can be used to detect arbitrage opportunities
  in Foreign Exchange (FX) currency markets.  This post presents
  an example FX arbitrage problem and its solution using 
  <a href="http://www.coin-or.org/Clp/">CLP</a>, an open source
  C++ optimization library.
---
In FX markets an arbitrage opportunity exists if there is a sequence of
currency exchanges from an initial currency, e.g. USD, through other 
currencies, e.g. GBP or EUR, back to the initial currency resulting in more
units of the initial currency that the starting amount.

The input data is a set of exchange rates such as 
below (from February 2002):

<table>
  <tr>
    <td></td>
    <td>USD</td>
    <td>EUR</td>
    <td>GBP</td>
    <td>JPY</td>
  </tr>
  <tr>
    <td>USD</td>
    <td></td>
    <td>0.8706</td>
    <td>1.4279</td>
    <td>0.00750</td>
  </tr>
  <tr>
    <td>EUR</td>
    <td>1.1486</td>
    <td></td>
    <td>1.6401</td>
    <td>0.00861</td>
  </tr>
  <tr>
    <td>GBP</td>
    <td>0.7003</td>
    <td>0.6097</td>
    <td></td>
    <td>0.00525</td>
  </tr>
  <tr>
    <td>JPY</td>
    <td>133.33</td>
    <td>116.14</td>
    <td>190.48</td>
    <td></td>
  </tr>
</table>

To identify arbitrage opportunities we want to solve the optimization
problem "maximise the number of dollars, D, obtained by converting DE 
dollars to euros, DP dollars to pounds, ..., EY euros to Japanese yen, 
...".  Assume that we start with 1 dollar and introduce an upper limit on D
of $10000 to constrain the optimization.

Phrasing this as linear programming problem gives:

    max D
    subject to
        D + DE + DP + DY - 0.8706 ED - 1.4279 PD - 0.00750 YD = 1
            ED + EP + EY - 1.1486 DE - 1.6401 PE - 0.00861 YE = 0
            PD + PE + PY - 0.7003 DP - 0.6097 EP - 0.00525 YP = 0
            YD + YP + YE - 133.33 DY - 116.14 EY -  190.48 PY = 0
    bounds
      D <= 10000
    end

The contraints represent flow of money out of and into a particular
currency.  For example consider the second constraint (euros).  Here the
constraint is saying that the amount of money converted from euros to other
currencies (ED+EP+EY) must match the amount of money converted to euros
(1.1486DE+...) since no money accumulates in this currency.  The constraint
for USD has an addtional term for the $1 initially available and
final USD arbitrage amount D.

We can solve this in C++ by using the 
[COIN-OR Linear Program Solver](http://www.coin-or.org/Clp/).  The code to
solve the problem is trivial:

    #include <ClpSimplex.hpp>

    int main( )
    {
      ClpSimplex model;
      int status;
         
      // Read the linear program description
      status = model.readLp( "fx_arbitrage.lp");
      if ( !status ) {
        // Perform the optimization
        model.primal();
      }

      // Print the solution
      ...
    }
    
Full version of code, makefile and LP file are available at this
[gist](https://gist.github.com/mattmcd/5276441).

Running the optimization gives the result:

    D: 10000
    DE: 2.04885e+07
    EY: 2.35331e+07
    YD: 2.73313e+09

That is, an arbitrage of $10000 can be achieved by exchanging USD204,885,000
for EUR235,331,000, then exchanging the euros for JPY2,733,130,000 and
finally completing the arbitrage by exchanging JPY back to USD.

Further Reading
---------------
This example is from 
["Optimization Methods in
Finance"](http://www.amazon.co.uk/Optimization-Methods-Finance-Mathematics-Risk/dp/0521861705)
by Gerard Cornuejols and Reha Tutuncu.  In my opinion this is a good book for learning
how to apply optimization methods to finance problems.  The presentation
follows the pattern of a chapter describing the mathematical structure of
each class of optimization
problem, followed by a chapter or so of applications.  It also discusses how to
use 
[Excel Solver](http://office.microsoft.com/en-gb/excel-help/introduction-to-optimization-with-the-excel-solver-tool-HA001124595.aspx) for certain classes of problems.

The FX rates have been modified
slightly from their Exercise 4.11 in order to eliminate single pair
arbitrage opportunities.  

Disclaimers
-----------

Identifying tradeable arbitrage opportunities using this approach
probably (actually, almost certainly) involves subtleties not considered in the above.
