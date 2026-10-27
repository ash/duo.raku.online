---
title: 'Soluzione: Tentativo o valore predefinito'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
my $r = try { die 'no' } // 'default';

say $r;
```

🦋 Trova il programma nel file [try-or-default.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/try/try-or-default.raku).

## Output

```
default
```

## Commenti

1. Il blocco `try` che fallisce dà un valore non definito.

1. Quindi l'operatore defined-or `//` restituisce il suo operando destro, `'default'`. È un modo pulito per rimediare con un valore di ripiego in una sola riga.

{% include nav.html %}
