---
title: Creating and calling functions in Raku
---

{% include menu.html %}

The first part of the course ends with this section. After it, you can write almost _any_ program in Raku. This section is about _functions_. Functions have other names too: _subroutines_, or just _routines_.

A function is a part of code with its own name. You can use it many times. To use a function, you _call_ it. You can call it from different places in the program.

## Creating a function

To create a function, write the keyword `sub`. After it, write the name of the function. Put the body of the function in curly brackets.

```raku
sub greet {
    say 'Hello, World!';
}
```

## Using a function

To use the function, just write its name. Write it where you want to call the function. In Raku, you can create the function before this place. You can also create it after this place.

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

Next, let's see more about creating and using functions.

{% include nav.html %}
