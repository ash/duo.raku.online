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

You can leave out the variable `$n`. Then Raku uses the variable `$_` instead. The program does the same as this one:

```raku
for 1..5 {
    say $_;
}
```

You [already know](/essentials/hello-world/) that you can use `say` as a method:

```raku
for 1..5 {
    $_.say;
}
```

When you call a method on `$_`, you do not need to write the variable. So the loop can be even shorter:

```raku
for 1..5 {
    .say;
}
```

{% include nav.html %}
