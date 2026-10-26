---
title: Usare `WHAT`
---

{% include menu.html %}

`WHAT` è uno pseudo-metodo che ti permette di ottenere il tipo di un valore. Puoi usarlo quasi allo stesso modo di `.^name`:

```raku
my $var = 42;

say $var.^name;
say $var.WHAT;
```

Entrambi stampano il tipo, ma hanno un aspetto un po' diverso. `.^name` dà solo il nome, e `WHAT` mostra l'oggetto tipo tra parentesi:

```
Int
(Int)
```

Se una variabile non ha un vincolo di tipo, all'inizio il suo tipo è `Any`. Dopo che assegni un valore, `^name` e `WHAT` mostrano entrambi il suo tipo:

```raku
my $var;
say $var.^name; # Any
say $var.WHAT;  # (Any)

$var = 'Hello';
say $var.^name; # Str
say $var.WHAT;  # (Str)
```

Con un vincolo di tipo, il tipo è noto subito, anche prima di assegnare qualcosa:

```raku
my Str $var;
say $var.^name; # Str
say $var.WHAT;  # (Str)

$var = 'Hello';
say $var.^name; # Str
say $var.WHAT;  # (Str)
```

## Confrontare oggetti tipo

`WHAT` restituisce l'oggetto tipo stesso, quindi puoi confrontare due oggetti tipo con `===`. Questo è l'operatore di _identità di valore_. Controlla se i due lati sono esattamente lo stesso valore. Ogni tipo ha un solo oggetto tipo. Quindi questo è un modo pulito per controllare se due valori hanno lo stesso tipo:

```raku
my $a = 42;
my $b = 100;

say $a.WHAT === $b.WHAT; # True  — both are Int
say $a.WHAT === Int;     # True
say $a.WHAT === Str;     # False
```

`==` confronta numeri, ma `===` confronta l'identità. Quindi funziona direttamente con gli oggetti tipo, e anche con altri valori.

{% include nav.html %}
