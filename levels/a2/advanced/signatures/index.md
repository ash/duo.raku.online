---
title: Signatures
---

{% include menu.html %}

In the Essentials part, you [wrote subroutines](/essentials/functions). They had positional and named parameters. The parameters had default values. The list of parameters is the _signature_. This section shows two more things that a signature can do. It can make a parameter optional. And it can collect any number of extra arguments.

## Optional parameters

A parameter with a question mark after it is _optional_. The caller can leave it out. Then the parameter is undefined. So you can give a value to use instead. Use the defined-or operator `//` for this:

```raku
sub greet($name, $greeting?) {
    my $g = $greeting // 'Hello';
    say "$g, $name!";
}

greet('Anna');           # Hello, Anna!
greet('Anna', 'Hi');     # Hi, Anna!
```

Here, we call `greet` with one argument. Then `$greeting` is undefined. So `//` gives `'Hello'` instead.

## Slurpy parameters

A parameter with a `*` is _slurpy_. It takes all the arguments that are left. You write a slurpy array with `*@`. It collects any number of positional arguments into an array:

```raku
sub count-them(*@items) {
    say @items.elems;
}

count-them(1, 2, 3, 4); # 4
count-them('a', 'b');   # 2
```

You can use normal parameters together with a slurpy one. First, the fixed parameters get their values. Everything else goes into the slurpy array:

```raku
sub titles($name, *@titles) {
    say "$name has {@titles.elems} title(s)";
}

titles('Anna', 'Dr', 'Prof'); # Anna has 2 title(s)
```

A slurpy hash works in the same way. You write it with `*%`. It collects all extra named arguments into a hash:

```raku
sub register($name, *%options) {
    say "$name: {%options.elems} option(s)";
    say "role is %options<role>";
}

register('Anna', role => 'admin', active => True);
```

The two named arguments become keys of `%options`. So the program prints:

```
Anna: 2 option(s)
role is admin
```

{% include nav.html %}
