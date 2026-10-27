---
title: 'Soluzione: Un avviso con `note`'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my $value = -3;

note 'Warning: the value is negative' if $value < 0;
say $value.abs;
```

🦋 Trova il programma nel file [note-a-warning.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/standard-streams/note-a-warning.raku).

## Output

```
Warning: the value is negative
3
```

## Commenti

1. `note` manda l'avviso all'errore standard. Lo fa solo quando il valore è davvero negativo. `say` manda il vero risultato all'output standard. Il risultato è il valore assoluto, `3`.

1. L'avviso va all'errore standard. Così non entra nel vero output del programma. `2>/dev/null` butta via l'errore standard. Allora resta solo il `3`.

{% include nav.html %}
