---
title: 'Soluzione: Quando non va storto nulla'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my $r = try { 21 * 2 };

say $r.defined;
say $r;
```

🦋 Trova il programma nel file [try-succeeds.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/try/try-succeeds.raku).

## Output

```
True
42
```

## Commenti

1. Qui il blocco `try` gira senza eccezioni. Quindi dà semplicemente il valore del blocco.

1. Quindi `$r` contiene `42`, e `$r.defined` è `True`.

{% include nav.html %}
