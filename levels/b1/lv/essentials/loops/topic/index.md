---
title: Tēmas mainīgais
---

{% include menu.html %}

`$_` ir īpašs mainīgais. To sauc par _topic mainīgo_.

Šeit ir cikls pār diapazonu:

```raku
for 1..5 -> $n {
    say $n;
}
```

Jūs varat izlaist mainīgo `$n`. Tad Raku tā vietā automātiski izmanto mainīgo `$_`. Tātad programma ir tāda pati kā šī:

```raku
for 1..5 {
    say $_;
}
```

Kā jūs [atceraties](/lv/essentials/hello-world/), `say` var izsaukt arī kā metodi:

```raku
for 1..5 {
    $_.say;
}
```

Lai izsauktu metodi uz `$_`, pašu mainīgo nav jāraksta. Tātad mēs varam padarīt savu ciklu vēl vienkāršāku:

```raku
for 1..5 {
    .say;
}
```

{% include nav.html %}
