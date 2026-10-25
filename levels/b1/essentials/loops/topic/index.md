---
title: Topic variable
---

{% include menu.html %}

`$_` is a special variable called the _topic variable_.

Look at this loop over a range:

```raku
for 1..5 -> $n {
    say $n;
}
```

You can leave out the variable `$n`, and then Raku uses an automatic variable, `$_`, instead. The program is the same as this one:

```raku
for 1..5 {
    say $_;
}
```

As you [remember](/essentials/hello-world/), you can also use `say` as a method:

```raku
for 1..5 {
    $_.say;
}
```

When you call a method on `$_`, you do not have to write the variable itself. So our loop can be made even simpler:

```raku
for 1..5 {
    .say;
}
```

{% include nav.html %}
