---
title: Variabile di argomento
---

{% include menu.html %}

`$_` è una variabile speciale. Si chiama _variabile topic_.

Ecco un ciclo su un intervallo:

```raku
for 1..5 -> $n {
    say $n;
}
```

Puoi togliere la variabile `$n`. Allora Raku usa automaticamente al suo posto la variabile `$_`. Quindi il programma è uguale a questo:

```raku
for 1..5 {
    say $_;
}
```

Come [ricordi](/it/essentials/hello-world/), puoi anche chiamare `say` come metodo:

```raku
for 1..5 {
    $_.say;
}
```

Per chiamare un metodo su `$_`, non devi scrivere la variabile stessa. Quindi possiamo rendere il nostro ciclo ancora più semplice:

```raku
for 1..5 {
    .say;
}
```

{% include nav.html %}
