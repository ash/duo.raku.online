---
title: Tēmas mainīgais
---

{% include menu.html %}

`$_` ir īpašs mainīgais, ko sauc par _topic mainīgo_.

Apskatiet šo ciklu pār diapazonu:

```raku
for 1..5 -> $n {
    say $n;
}
```

Jūs varat izlaist mainīgo `$n`, un tad Raku tā vietā izmanto automātisku mainīgo `$_`. Programma ir tāda pati kā šī:

```raku
for 1..5 {
    say $_;
}
```

Kā jūs [atceraties](/lv/essentials/hello-world/), `say` var izmantot arī kā metodi:

```raku
for 1..5 {
    $_.say;
}
```

Kad jūs izsaucat metodi uz `$_`, pašu mainīgo nav jāraksta. Tātad mūsu ciklu var padarīt vēl vienkāršāku:

```raku
for 1..5 {
    .say;
}
```

{% include nav.html %}
