---
title: Usare `WHAT`
---

{% include menu.html %}

`WHAT` è uno pseudo-metodo. Ti dà il tipo di un valore. Lo usi quasi come `.^name`:

```raku
my $var = 42;

say $var.^name;
say $var.WHAT;
```

Tutti e due stampano il tipo, ma appaiono un po' diversi. `.^name` dà solo il nome. `WHAT` dà il tipo stesso, come oggetto tipo. Lo mostra tra parentesi tonde:

```
Int
(Int)
```

Prendi una variabile senza vincolo di tipo. All'inizio, il suo tipo è `Any`. Poi assegni un valore. Ora `^name` e `WHAT` mostrano tutti e due il tipo di questo valore:

```raku
my $var;
say $var.^name; # Any
say $var.WHAT;  # (Any)

$var = 'Hello';
say $var.^name; # Str
say $var.WHAT;  # (Str)
```

Con un vincolo di tipo, Raku conosce subito il tipo. Questo vale anche prima di assegnare un valore:

```raku
my Str $var;
say $var.^name; # Str
say $var.WHAT;  # (Str)

$var = 'Hello';
say $var.^name; # Str
say $var.WHAT;  # (Str)
```

## Confrontare oggetti tipo

`WHAT` restituisce l'oggetto tipo stesso. Quindi puoi confrontare due oggetti tipo. Usa per questo l'operatore `===`. È l'operatore di _identità di valore_. Controlla se i due lati sono lo stesso valore. Ogni tipo ha un solo oggetto tipo. Quindi `===` controlla facilmente se due valori hanno lo stesso tipo:

```raku
my $a = 42;
my $b = 100;

say $a.WHAT === $b.WHAT; # True  — both are Int
say $a.WHAT === Int;     # True
say $a.WHAT === Str;     # False
```

`==` confronta numeri. Ma `===` confronta l'identità. Quindi funziona direttamente con gli oggetti tipo. Funziona anche con altri valori.

{% include nav.html %}
