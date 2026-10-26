---
title: 'Solution: Descrivere una variabile'
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
my Str $lang = 'Raku';

say $lang.^name;
say $lang.VAR.^name;
say $lang.VAR.name;
```

🦋 Puoi trovare il codice sorgente nel file [describe-a-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/introspection/describe-a-variable.raku).

## Output

```
Str
Scalar
$lang
```

## Commenti

1. `.^name` dà il tipo del valore nel contenitore, che è `Str`.

1. `.VAR` dà il contenitore dietro la variabile. Poi `.^name` su di esso restituisce `Scalar`, che è il tipo del contenitore stesso.

1. `.VAR.name` restituisce il nome della variabile, `$lang`, con il suo sigillo. Nota che questo è il metodo `name`. Non è il meta-metodo `^name` che abbiamo usato nelle prime due righe.

{% include nav.html %}
