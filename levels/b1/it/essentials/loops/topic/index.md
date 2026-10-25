---
title: Variabile di argomento
---

{% include menu.html %}

`$_` è una variabile speciale chiamata _variabile topic_.

Guarda questo ciclo su un intervallo:

```raku
for 1..5 -> $n {
    say $n;
}
```

Puoi omettere la variabile `$n`, e allora Raku usa al suo posto una variabile automatica, `$_`. Il programma è uguale a questo:

```raku
for 1..5 {
    say $_;
}
```

Come [ricordi](/it/essentials/hello-world/), puoi anche usare `say` come metodo:

```raku
for 1..5 {
    $_.say;
}
```

Quando chiami un metodo su `$_`, non devi scrivere la variabile stessa. Quindi il nostro ciclo può diventare ancora più semplice:

```raku
for 1..5 {
    .say;
}
```

{% include nav.html %}
