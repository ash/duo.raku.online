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

Variabilem `$n` omittere potes. Tum Raku variabilem `$_` pro ea adhibet. Programma idem facit atque hoc:

```raku
for 1..5 {
    say $_;
}
```

[Iam scis](/la/essentials/hello-world/) te posse `say` ut methodum adhibere:

```raku
for 1..5 {
    $_.say;
}
```

Cum methodum in `$_` vocas, variabilem scribere non debes. Itaque iteratio etiam brevior esse potest:

```raku
for 1..5 {
    .say;
}
```

{% include nav.html %}
