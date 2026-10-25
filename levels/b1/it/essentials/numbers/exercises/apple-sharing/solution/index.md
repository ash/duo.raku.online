---
title: 'Solution: Condivisione delle mele'
---

{% include menu.html %}

Ecco la soluzione al problema.

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

Con i numeri di input 3 e 11, il programma stampa questo:

```console
$ raku exercises/numbers/apple-sharing.raku
Ogni persona riceve 3 mela(e).
Rimangono 2 mela(e).
```

Cambia i valori iniziali di `$N` e `$K` per provare altre situazioni:

* `$K` è un multiplo di `$N`, per esempio, `12` e `3`;
* `$K` è uguale a `$N`;
* `$K` è minore di `$N`.

## Commenti

Il programma usa due operatori: `div` per la divisione intera e `%` per il resto della divisione. Un altro modo è fare i calcoli così:

```raku
my $gets = $K div $N;
my $remains = $K - $N * $gets;
```

Nota anche come Raku inserisce i valori delle variabili nella stringa.

{% include nav.html %}
