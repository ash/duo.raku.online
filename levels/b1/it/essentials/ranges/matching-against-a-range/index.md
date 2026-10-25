---
title: Confronto con un intervallo
---

{% include menu.html %}

Prendi un intervallo e una variabile che contiene un valore intero:

```raku
my $r = 1..10;
my $v = 7;
```

L'_operatore di smart-match_ `~~` ti permette di controllare se il valore è dentro l'intervallo:

```
say $v ~~ $r;
```

In questo esempio, la condizione è `True`, quindi il programma stampa `True`.

{% include nav.html %}
