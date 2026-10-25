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

Non serve scrivere `$n`. Senza `$n`, Raku usa la variabile `$_`. Raku crea questa variabile per te. Quindi questo programma fa la stessa cosa:

```raku
for 1..5 {
    say $_;
}
```

[Sai già](/it/essentials/hello-world/) che `say` può essere anche un metodo:

```raku
for 1..5 {
    $_.say;
}
```

Per chiamare un metodo su `$_`, non serve scrivere `$_`. Così il ciclo può essere ancora più breve:

```raku
for 1..5 {
    .say;
}
```

{% include nav.html %}
