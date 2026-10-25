---
title: Operatore defined-or
---

{% include menu.html %}

A volte una variabile non ha ancora un valore. Allora puoi usare un altro valore al suo posto. Per questo c'è l'operatore `//`. Si chiama operatore _defined-or_.

```raku
my $a = 'alpha';
say $a // 'gamma';

my $b;
say $b // 'delta';
```

Questo programma stampa:

```
alpha
delta
```

La prima riga dà un valore a `$a`. Quindi l'espressione `$a // 'gamma'` usa il valore attuale di `$a`. La variabile `$b` è diversa. Non ha un valore. Quindi `$b // 'delta'` dà il valore a destra. Il programma stampa `delta`.

## //=

Insieme, `//` e `=` formano l'operatore `//=`. Assegna un valore solo quando la variabile non è definita.

```raku
my $x;
$x //= 42;
say $x; # 42
```

{% include nav.html %}
