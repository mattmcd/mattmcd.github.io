---
layout: default
title: Constants in C++ and Scala
headline: Comparing C++11 const syntax to Scala
abstract: | 
    In Scala variables can be mutable (_var_) or immutable (_val_).  
    In C++ variables can be modified by the _const_ keyword to achieve 
    the same results.  Here we consider the case of a list of strings.
    An extended C++ example is available at
    [this gist](https://gist.github.com/mattmcd/5240193).
---

Note that in Scala all objects are created on the heap.  In C++
we can create objects on either the heap or stack.  The examples
below use the heap and make use of std::unique_ptr to take care
of memory usage.

To simplify the C++ examples the following _using_ and _typedef_ 
lines have been used:

	using namespace std;
    typedef vector<string> str_vec;


Case 1:  Immutable list of immutable strings
--------------------------------------------
We want to create the list of immutable elements, assign it to 
a variable and prevent any reassignment of the variable.

Use case: a fixed resource containing a list of things that 
must not change over the lifetime of the function or application.
For example, a list of index constituents and weights. 

Scala:

    val names = List("one", "two")

C++:

    const auto names = unique_ptr<const str_vec>(new str_vec {"one","two"});


Case 2:  Immutable list of mutable strings
------------------------------------------
We want to create the list of mutable elements, assign it to 
a variable and prevent any reassignment of the variable.

Use case: a fixed resource containing a list of elements that can
be modified.  For example, a set of portfollio holdings for a specific
fund.

Scala:

    val names = Array("one", "two")
	names(1) = "three"

C++:

    const auto names = unique_ptr<str_vec>(new str_vec {"one","two"});
	(*names)[1] = "three"


Case 3:  Mutable list of immutable strings
------------------------------------------
We want to create the list of immutable elements, assign it to 
a variable and allow reassignment of the variable.

Use case: a resource that can be replaced by another resource
of the same type, where the elements cannot change.
For example, a set of instruments stored as a property of a backtest
engine.  Backtesting a new set of instruments involves replacing the
property but we don't want to be able to change the instruments 
themselves.

Scala:

    var names = List("one", "two")
	var names2 = List("three", "four")
	names = names2

C++:

    auto names = unique_ptr<const str_vec>(new str_vec {"one","two"});
    auto names2 = unique_ptr<const str_vec>(new str_vec {"three","four"});
	names = move( names2 );   // names2 is now invalid


Case 4:  Mutable list of mutable strings
----------------------------------------
We want to create the list of mutable elements, assign it to 
a variable and allow reassignment of the variable.

Use case: temporary lists used during a processing algorithm or
list construction,  For example, constructing a filtered list by
adding elements satisfying filter criteria.

Scala:

    var names = Array("one", "two")
	var names2 = Array("three", "four")
	names2(1) = "five"
	names = names2

C++:

    auto names = unique_ptr<str_vec>(new str_vec {"one","two"});
    auto names2 = unique_ptr<str_vec>(new str_vec {"three","four"});
	*names2[1] = "five";
	names = move( names2 );
	
Summary
-------
It can be seen that there are a number of different ways to specify 
that something is constant, each having slightly different meanings.
In general, by making as many things constant as possible we increase 
the chance that the compiler will detect flaws in our modelling logic, 
rather than the user at run time.
