---
title: Variabile di argomento
---

{% include menu.html %}

`$_` è una variabile speciale. Si chiama _variabile topic_.

Guarda questo ciclo su un intervallo:

```raku
for 1..5 -> $n {
    say $n;
}
```

Puoi togliere la variabile `$n`. Allora Raku usa al suo posto la variabile `$_`. Il programma fa la stessa cosa di questo:

```raku
for 1..5 {
    say $_;
}
```

[Sai già](/it/essentials/hello-world/) che puoi usare `say` come metodo:

```raku
for 1..5 {
    $_.say;
}
```

Quando chiami un metodo su `$_`, non devi scrivere la variabile. Così il ciclo può essere ancora più breve:

```raku
for 1..5 {
    .say;
}
```

{% include nav.html %}
