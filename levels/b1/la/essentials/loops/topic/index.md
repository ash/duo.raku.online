---
title: Topic variabile
---

{% include menu.html %}

`$_` est variabilis specialis quae _variabilis argumenti_ appellatur.

Specta hanc iterationem per intervallum:

```raku
for 1..5 -> $n {
    say $n;
}
```

Variabilem `$n` omittere potes, et tum Raku variabilem automaticam, `$_`, pro ea adhibet. Programma idem est atque hoc:

```raku
for 1..5 {
    say $_;
}
```

Ut [meministi](/la/essentials/hello-world/), `say` etiam ut methodum adhibere potes:

```raku
for 1..5 {
    $_.say;
}
```

Cum methodum in `$_` vocas, ipsam variabilem scribere non debes. Itaque iteratio nostra etiam simplicior fieri potest:

```raku
for 1..5 {
    .say;
}
```

{% include nav.html %}
