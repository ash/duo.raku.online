---
title: Creating and calling functions in Raku
---

{% include menu.html %}

Now you are in the last section of the first part of the course. After it, you will know enough to write almost _any_ program in Raku. The topic of this section is _functions_. They are also called _subroutines_, or simply _routines_.

A function is a named piece of code that you can use many times. You can _call_ a function from different places in the program.

## Creating a function

To create a function, write the keyword `sub` and then the name of the function. The body of the function goes inside a pair of curly brackets.

```raku
sub greet {
    say 'Hello, World!';
}
```

## Using a function

To use the function, simply write its name where you want to call it. In Raku, the definition of the function can come before the call or after it.

```raku
say 'This is what the first program usually prints:';
greet;    

sub greet {
    say 'Hello, World!';
}
```

The program prints both messages:

```console
$ raku t.raku
This is what the first program usually prints:
Hello, World!
```

Now we will look at more details about how to create and use functions.

{% include nav.html %}
