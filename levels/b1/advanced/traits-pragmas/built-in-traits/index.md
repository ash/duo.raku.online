---
title: Built-in traits
---

{% include menu.html %}

A _trait_ is added with the `is` keyword right after a declaration. It runs at compile time. It changes a fixed property of the thing it belongs to. Raku comes with many traits, and you have already used a few.

By default, the parameters of a subroutine are **read-only**. You cannot assign to them inside the routine. The `is copy` trait gives you a private copy of the argument that you can change. The change does not affect the caller:

```raku
sub greet($name is copy) {
    $name = "dear $name";
    say "Hello, $name!";
}

my $who = 'Anna';
greet($who); # Hello, dear Anna!
say $who;    # Anna — the caller's own variable is untouched
```

The `is rw` trait goes further. It binds the parameter to the caller’s variable. So a change inside the routine is also visible outside:

```raku
sub bump($n is rw) {
    $n++;
}

my $x = 10;
bump($x);
say $x; # 11
```

Without one of these traits, `$n++` would cause an error. The parameter would be read-only.

Another common trait sets a default value:

```raku
my $port is default(8080);
say $port; # 8080
```

Here, `is default` gives the variable a value to use when there is no other value. There are many built-in traits, such as `is rw`, `is copy` and `is default`. Each of them adds one specific behaviour to a declaration at compile time. The next topic shows that the set of traits is not closed. [You can define your own](/advanced/traits-pragmas/writing-a-trait).

{% include nav.html %}
