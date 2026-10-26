---
title: 'Solution: Da esadecimale a decimale'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my $n = :16<1A>;

say $n;
say $n.base(16);
```

🦋 Puoi trovare il codice sorgente nel file [hex-to-decimal.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/integers/hex-to-decimal.raku).

## Output

```
26
1A
```

## Commenti

1. La forma radice `:16<1A>` legge `1A` come un numero in base 16. Il suo valore è `1 × 16 + 10 = 26`. Ora la variabile `$n` contiene questo valore come un normale intero.

1. `$n.base(16)` trasforma di nuovo l'intero in una stringa in base 16. Il risultato è di nuovo `1A`. Quindi leggere in una base e stampare in una base sono cose opposte.

{% include nav.html %}
