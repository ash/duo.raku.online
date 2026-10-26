---
title: 'Solution: Il valore di un blocco do'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. Un `if` semplice è un'istruzione, e non potete usare il suo valore. Il prefisso `do` trasforma tutto l'`if`/`else` in un'espressione.

1. `7 > 5` è vero, quindi l'espressione dà `'big'`, e questo valore viene assegnato a `$label`. Lo stesso trucco funziona con `do given` e `do for`.

1. Le parentesi graffe `{ }` non sono opzionali. In Raku, `if` vuole sempre un blocco. Quindi non potete accorciare i rami in `if 7 > 5 'big' else 'small'`. Questo non compila e dà l'errore *Missing block*.

{% include nav.html %}
