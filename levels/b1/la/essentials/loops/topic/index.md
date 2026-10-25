---
title: Topic variabile
---

{% include menu.html %}

`$_` est variabilis specialis. Appellatur _variabilis argumenti_.

Hic est iteratio per intervallum:

```raku
for 1..5 -> $n {
    say $n;
}
```

Variabilem `$n` omittere potes. Tum Raku automatice variabilem `$_` pro ea adhibet. Itaque programma idem est atque hoc:

```raku
for 1..5 {
    say $_;
}
```

Ut [meministi](/la/essentials/hello-world/), `say` etiam ut methodum vocare potes:

```raku
for 1..5 {
    $_.say;
}
```

Cum methodum in `$_` vocas, non necesse est ipsam variabilem scribere. Itaque iterationem nostram etiam simpliciorem facere possumus:

```raku
for 1..5 {
    .say;
}
```

{% include nav.html %}
