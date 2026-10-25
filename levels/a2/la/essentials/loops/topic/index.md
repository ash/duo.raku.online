---
title: Topic variabile
---

{% include menu.html %}

`$_` est variabilis specialis. Nomen eius est _variabilis argumenti_.

Specta hanc iterationem per intervallum:

```raku
for 1..5 -> $n {
    say $n;
}
```

Non necesse est `$n` scribere. Sine eo, Raku variabilem `$_` adhibet. Raku hanc variabilem tibi facit. Itaque hoc programma idem facit:

```raku
for 1..5 {
    say $_;
}
```

Ut [iam scis](/la/essentials/hello-world/), `say` etiam methodus esse potest:

```raku
for 1..5 {
    $_.say;
}
```

Si methodum in `$_` vocas, nomen `$_` non scribis. Itaque iteratio etiam brevior esse potest:

```raku
for 1..5 {
    .say;
}
```

{% include nav.html %}
