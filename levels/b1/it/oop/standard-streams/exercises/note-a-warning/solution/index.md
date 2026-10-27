---
title: 'Soluzione: Un avviso con `note`'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. `note` manda l'avviso all'errore standard, ma solo se il valore è davvero negativo. `say` manda il vero risultato, il valore assoluto `3`, all'output standard.

1. L'avviso resta sull'errore standard. Così non si mescola con il vero output del programma. Se butti via l'errore standard con `2>/dev/null`, resta solo il `3`.

{% include nav.html %}
