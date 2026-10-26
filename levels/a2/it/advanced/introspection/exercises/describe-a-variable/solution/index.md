---
title: 'Solution: Descrivere una variabile'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

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

1. `.^name` restituisce il tipo del valore nel contenitore. Questo tipo è `Str`.

1. `.VAR` restituisce il contenitore dietro la variabile. `.^name` sul contenitore restituisce `Scalar`. Questo è il tipo del contenitore stesso.

1. `.VAR.name` restituisce il nome della variabile con il suo sigillo: `$lang`. Nota che questo è il metodo `name`. Non è il meta-metodo `^name` delle prime due righe.

{% include nav.html %}
