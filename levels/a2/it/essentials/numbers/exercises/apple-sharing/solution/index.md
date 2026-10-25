---
title: 'Solution: Condivisione delle mele'
---

{% include menu.html %}

Ecco la soluzione.

## Codice

```raku
my $N = 3;
my $K = 11;

my $gets = $K div $N;
my $remains = $K % $N;

say "Ogni persona riceve $gets mela(e).";
say "Rimangono $remains mela(e).";
```

🦋 Puoi trovare il codice completo nel file [apple-sharing.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/apple-sharing.raku).

## Output

I numeri di input sono 3 e 11. Con questi numeri, il programma stampa questo:

```console
$ raku exercises/numbers/apple-sharing.raku
Ogni persona riceve 3 mela(e).
Rimangono 2 mela(e).
```

Cambia i valori iniziali di `$N` e `$K`. Prova altri casi:

* `$K` si divide per `$N` senza resto, per esempio, `12` e `3`;
* `$K` è uguale a `$N`;
* `$K` è minore di `$N`.

## Commenti

Il programma usa due operatori. L'operatore `div` fa la divisione intera. L'operatore `%` dà il resto della divisione. Puoi fare i calcoli anche così:

```raku
my $gets = $K div $N;
my $remains = $K - $N * $gets;
```

Guarda anche la stringa. Raku interpola le variabili che contiene. Questo vuol dire che mette i loro valori nella stringa.

{% include nav.html %}
