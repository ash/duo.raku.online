---
title: 'Solution: Triplicare'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my $factor = 3;
my $scale = -> $x { $x * $factor };

say $scale(7);
```

🦋 Puoi trovare il codice sorgente nel file [triple-it.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/anonymous-subroutines/triple-it.raku).

## Output

```
21
```

## Commenti

1. Il blocco a freccia ha un solo parametro, `$x`. Ma usa anche `$factor`. Questa variabile viene dal codice intorno al blocco. Un blocco che tiene queste variabili è una closure.

1. `$factor` vale `3`, quindi `$scale(7)` dà `21`. Ora cambia `$factor`. Allora lo stesso blocco usa il nuovo valore:

```raku
$factor = 5;
say $scale(7); # 35
```

La closure tiene la *variabile* stessa. Non tiene il vecchio valore della variabile. Quindi la chiamata successiva vede il nuovo `$factor`. Restituisce `35`.

{% include nav.html %}
