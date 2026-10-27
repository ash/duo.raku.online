---
title: 'Soluzione: Tentativo o valore predefinito'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

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

1. Il blocco `try` fallisce. Quindi il suo valore non è definito.

1. Quindi l'operatore defined-or `//` restituisce il suo lato destro. Questo è `'default'`. È un modo pulito per andare avanti dopo un fallimento. Ti servono solo una riga e un valore di ripiego.

{% include nav.html %}
