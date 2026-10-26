---
title: 'Solution: Il valore di un blocco do'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my $label = do if 7 > 5 { 'big' } else { 'small' };

say $label;
```

🦋 Il codice sorgente è disponibile nel file [do-block.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/statement-prefixes/do-block.raku).

## Output

```
big
```

## Commenti

1. Un `if` semplice è un'istruzione. Non ha un valore che potete usare. Il prefisso `do` fa di tutto l'`if`/`else` un'espressione.

1. `7 > 5` è vero. Così il valore dell'espressione è `'big'`. Il programma lo assegna a `$label`. Lo stesso trucco funziona con `do given` e `do for`.

1. Dovete scrivere le parentesi graffe `{ }`. In Raku, `if` ha sempre bisogno di un blocco. Quindi non potete accorciare i rami, come in `if 7 > 5 'big' else 'small'`. Questo codice non compila. L'errore è *Missing block*.

{% include nav.html %}
