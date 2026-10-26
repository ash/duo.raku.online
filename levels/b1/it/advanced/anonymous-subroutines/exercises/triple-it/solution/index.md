---
title: 'Solution: Triplicare'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. Il blocco a freccia ha un solo parametro, `$x`. Eppure usa `$factor`, una variabile dello scope che lo circonda. Catturare queste variabili è ciò che lo rende una closure.

1. Quando `$factor` vale `3`, la chiamata `$scale(7)` dà `21`. Se cambi `$factor`, lo stesso blocco moltiplica per il nuovo valore:

```raku
$factor = 5;
say $scale(7); # 35
```

La closure cattura la *variabile* stessa. Non cattura il valore che aveva quando il blocco è stato scritto. Quindi la chiamata successiva vede il nuovo `$factor` e restituisce `35`.

{% include nav.html %}
