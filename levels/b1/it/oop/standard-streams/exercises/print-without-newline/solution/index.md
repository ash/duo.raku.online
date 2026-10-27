---
title: 'Soluzione: Stampare senza andare a capo'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
$*OUT.print('a');
$*OUT.print('b');
$*OUT.say('c');
```

🦋 Trova il programma nel file [print-without-newline.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/standard-streams/print-without-newline.raku).

## Output

```
abc
```

## Commenti

1. `$*OUT.print` non aggiunge un ritorno a capo dopo il suo testo, quindi `a` e `b` restano su una sola riga.

1. `$*OUT.say` scrive `c` e poi un ritorno a capo, che chiude la riga `abc`.

{% include nav.html %}
