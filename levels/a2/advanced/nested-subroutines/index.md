---
title: Nested subroutines
---

{% include menu.html %}

You can define a subroutine _inside_ another subroutine. This is a nested subroutine. It is a normal subroutine. But you can see and use it only inside the outer subroutine.

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

Here, we create `inner` inside `outer`. Then `outer` calls it. This works. The name `inner` is known in the whole body of `outer`.

But outside `outer`, the name `inner` does not exist. This program does not compile:

```raku
sub outer {
    sub inner { 42 }
}

inner; # error: Undeclared routine: inner
```

Sometimes only one subroutine needs a helper routine. Then nesting is useful. Put the helper inside that subroutine. This shows that the helper is private. Also, no other code can call it by mistake.

{% include nav.html %}
