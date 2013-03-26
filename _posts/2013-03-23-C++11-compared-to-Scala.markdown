---
layout: default
title: C++11 compared to Scala 
headline: A small example comparing C++11 syntax to Scala
abstract: | 
  Both Scala and C++11 have type inference capabilities that simplify code 
  while retaining type safety.  This post compares the syntax for a program
  that prints out its list of input arguments.
---

First consider the [Scala version](https://gist.github.com/mattmcd/5227882):

    for( arg <- args ) println(arg)

When a Scala script is executed the command line arguments are passed in 
as a java.lang.String array args.  We can then use the for expression
to iterate over the strings and print them. 

Now consider the equivalent line of the [C++ version](https://gist.github.com/mattmcd/5227865):

    for( const auto arg : args ) std::cout << arg << std::endl;

We've ignored here some code that translates the input array of strings into a vector&lt;string&gt;,
as well as the include statements.  The main program logic is however virtually identical.

This post was partly inspired by [C++11 and Boost - succinct like Python](bit.ly/Tuhdiq).  
The example program is from Chapter 2 of 
[Programming in Scala](http://www.amazon.co.uk/Programming-Scala-2nd-Martin-Odersky/dp/0981531644).

