---
title: Default values
---

{% include menu.html %}

Both positional and named parameters can have default values. If a parameter has a default value, you may skip it in a function call.

## Positional parameters

Here is an example of a default value for a positional parameter:

```raku
sub greet($name = 'World') {
    say "Hello, $name!";
}

greet('Merinda');
greet();
```

In the first call, the name is the only argument, so the result is `Hello, Merinda!`. The second call uses the default value and prints `Hello, World!`.

If a function has several parameters, only the last ones can have default values:

```raku
sub f($a, $b, $c = 42, $d = 50) { . . . } # correct
# sub f($a = 10, $b = 20, $c, $d) { . . . } # WRONG
```

## Named parameters

You set default values for named parameters with the same syntax:

```raku
sub greet(:$name = 'World') {
    say "Hello, $name!";
}

greet(name => 'Merinda'); # Hello, Merinda!
greet(); # Hello, World!
```

The order of named parameters does not matter. So any of them can have a default value, even the first one:

```raku
sub greet(:$greeting = 'Hello', :$name) {
    say "$greeting, $name!";
}

greet(name => 'Alla'); # Hello, Alla!
```

{% include nav.html %}
