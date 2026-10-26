---
title: Nested subroutines
---

{% include menu.html %}

A subroutine can be defined _inside_ another subroutine. Such a nested subroutine is a normal subroutine. But it is visible only inside the subroutine that contains it.

```raku
sub outer {
    sub inner {
        say 'I am the inner subroutine';
    }

    inner;
}

outer;
```

The program prints:

```
I am the inner subroutine
```

Here, `inner` is declared inside `outer`, and `outer` calls it. This works because you can use `inner` anywhere in the body of `outer`.

But outside `outer`, there is no name `inner`. So the next program does not compile:

```raku
sub outer {
    sub inner { 42 }
}

inner; # error: Undeclared routine: inner
```

Nesting is useful when only one subroutine needs a helper routine. If you keep the helper inside, it is clear that it is a private detail. Also, nobody can call it from somewhere else by mistake.

{% include nav.html %}
