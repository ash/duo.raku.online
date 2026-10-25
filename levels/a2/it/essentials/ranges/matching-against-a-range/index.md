---
title: Confronto con un intervallo
---

{% include menu.html %}

Ecco un intervallo e una variabile. La variabile ha un valore intero:

```raku
my $r = 1..10;
my $v = 7;
```

Usa l'_operatore di smart-match_ `~~`. Controlla se il valore è nell'intervallo:

```
say $v ~~ $r;
```

In questo esempio, la condizione è `True`. Quindi il programma stampa `True`.

{% include nav.html %}
