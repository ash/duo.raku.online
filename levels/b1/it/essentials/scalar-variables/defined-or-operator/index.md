---
title: Operatore defined-or
---

{% include menu.html %}

Il cosiddetto operatore _defined-or_ `//` aiuta quando una variabile non ha ancora un valore. In quel caso, ti dà un altro valore da usare al suo posto.

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

Il valore di `$a` viene impostato nella prima riga. Quindi l'espressione `$a // 'gamma'` usa il valore attuale di `$a`. La variabile `$b`, invece, non ha ricevuto un valore iniziale. Quindi `$b // 'delta'` restituisce l'operando a destra, e il programma stampa `delta`.

## //=

Quando combini `//` e `=`, ottieni l'operatore `//=`. Assegna un valore solo se la variabile non è definita.

```raku
my $x;
$x //= 42;
say $x; # 42
```

{% include nav.html %}
