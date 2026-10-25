---
title: Topic variable
---

{% include menu.html %}

`$_` is a special variable. Its name is the _topic variable_.

Look at this loop over a range:

```raku
for 1..5 -> $n {
    say $n;
}
```

You do not have to write `$n`. Without it, Raku uses the variable `$_`. Raku makes this variable for you. So this program does the same thing:

```raku
for 1..5 {
    say $_;
}
```

You [already know](/essentials/hello-world/) that `say` can also be a method:

```raku
for 1..5 {
    $_.say;
}
```

A method call on `$_` does not need the name `$_`. So the loop can be even shorter:

```raku
for 1..5 {
    .say;
}
```

{% include nav.html %}
