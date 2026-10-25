---
title: Topic variable
---

{% include menu.html %}

`$_` is a special variable. It is called the _topic variable_.

Here is a loop over a range:

```raku
for 1..5 -> $n {
    say $n;
}
```

You can leave out the variable `$n`. Then Raku automatically uses the variable `$_` instead. So the program is the same as this one:

```raku
for 1..5 {
    say $_;
}
```

As you [remember](/essentials/hello-world/), you can also call `say` as a method:

```raku
for 1..5 {
    $_.say;
}
```

To call a method on `$_`, you do not need to write the variable itself. So we can make our loop even simpler:

```raku
for 1..5 {
    .say;
}
```

{% include nav.html %}
