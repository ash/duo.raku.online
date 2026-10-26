---
title: 'Solution: Una stringa grezza'
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
say Q{$x and \n};
```

🦋 Puoi trovare il codice sorgente nel file [raw-string.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/quoting/raw-string.raku).

## Output

```
$x and \n
```

## Commenti

1. `Q` è la forma di quoting più letterale. Non interpola niente e non elabora le sequenze di escape.

1. Quindi `$x` resta semplice testo. E `\n` resta come due caratteri, un backslash e una `n`.

{% include nav.html %}
