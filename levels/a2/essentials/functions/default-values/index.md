---
title: Default values
---

{% include menu.html %}

Positional and named parameters can have default values. A parameter with a default value is not required. You can skip it when you call the function. Then the parameter gets its default value.

## Positional parameters

Here is an example. The function has a positional parameter with a default value:

```raku
sub greet($name = 'World') {
    say "Hello, $name!";
}

greet('Merinda');
greet();
```

The first call passes a name as its only argument. So it prints `Hello, Merinda!`. The second call uses the default value. It prints `Hello, World!`.

Sometimes a function has more than one parameter. Then the default values must be at the end of the list:

```raku
sub f($a, $b, $c = 42, $d = 50) { . . . } # correct
# sub f($a = 10, $b = 20, $c, $d) { . . . } # WRONG
```

## Named parameters

Named parameters get default values in the same way:

```raku
sub greet(:$name = 'World') {
    say "Hello, $name!";
}

greet(name => 'Merinda'); # Hello, Merinda!
greet(); # Hello, World!
```

The order of named parameters does not matter. So any of them can have a default value. Even the first one in the list can have it:

```raku
sub greet(:$greeting = 'Hello', :$name) {
    say "$greeting, $name!";
}

greet(name => 'Alla'); # Hello, Alla!
```

{% include nav.html %}
