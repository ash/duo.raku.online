---
title: Signatures
---

{% include menu.html %}

In the Essentials part, you [defined subroutines with positional and named parameters](/essentials/functions). You also gave the parameters default values. The list of parameters is called the _signature_. This section shows two more things that a signature can do. It can make a parameter optional, and it can collect any number of extra arguments.

## Optional parameters

A parameter with a question mark after it is _optional_. This means that the caller may leave it out. In that case, the parameter is undefined. So you can give it a fallback value with the defined-or operator `//`:

```raku
sub greet($name, $greeting?) {
    my $g = $greeting // 'Hello';
    say "$g, $name!";
}

greet('Anna');           # Hello, Anna!
greet('Anna', 'Hi');     # Hi, Anna!
```

When `greet` is called with one argument, `$greeting` is undefined. So `//` uses `'Hello'` instead.

## Slurpy parameters

A parameter marked with a `*` is _slurpy_. It takes all the remaining arguments. A slurpy array, written `*@`, collects any number of positional arguments into an array:

```raku
sub count-them(*@items) {
    say @items.elems;
}

count-them(1, 2, 3, 4); # 4
count-them('a', 'b');   # 2
```

You can mix ordinary parameters with a slurpy one. The fixed parameters get their values first. Whatever is left goes into the slurpy array:

```raku
sub titles($name, *@titles) {
    say "$name has {@titles.elems} title(s)";
}

titles('Anna', 'Dr', 'Prof'); # Anna has 2 title(s)
```

A slurpy hash works in the same way. You write it as `*%`, and it collects any extra named arguments into a hash:

```raku
sub register($name, *%options) {
    say "$name: {%options.elems} option(s)";
    say "role is %options<role>";
}

register('Anna', role => 'admin', active => True);
```

The two named arguments become keys in `%options`, so the program prints:

```
Anna: 2 option(s)
role is admin
```

{% include nav.html %}
