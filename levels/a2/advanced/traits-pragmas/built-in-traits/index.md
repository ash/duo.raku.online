---
title: Built-in traits
---

{% include menu.html %}

You add a _trait_ with the keyword `is`, right after a declaration. A trait runs at compile time. It changes a fixed property of the thing that has the trait. Raku has many traits. You already used a few of them.

Normally, the parameters of a subroutine are **read-only**. You cannot assign new values to them inside the routine. The trait `is copy` gives you your own copy of the argument. You can change this copy. The change stays inside the routine. The caller’s variable stays the same:

```raku
sub greet($name is copy) {
    $name = "dear $name";
    say "Hello, $name!";
}

my $who = 'Anna';
greet($who); # Hello, dear Anna!
say $who;    # Anna — the caller's own variable is untouched
```

The trait `is rw` goes further. It connects the parameter to the caller’s variable. You change the parameter inside the routine. Then the change is visible outside too:

```raku
sub bump($n is rw) {
    $n++;
}

my $x = 10;
bump($x);
say $x; # 11
```

Without one of these traits, `$n++` gives an error. This is because the parameter is read-only.

Another common trait sets a default value:

```raku
my $port is default(8080);
say $port; # 8080
```

Here, `is default` gives the variable a default value. The variable has this value when nothing else is in it. There are many built-in traits: `is rw`, `is copy`, `is default`, and more. Each of them adds one special behaviour to a declaration. This happens at compile time. The next topic shows that the list of traits is not closed. [You can make your own traits](/advanced/traits-pragmas/writing-a-trait).

{% include nav.html %}
