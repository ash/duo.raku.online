---
title: 'Solution: Matching per tipo'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
my $value = 3.14;

given $value {
    when Int { say 'integer' }
    when Rat { say 'rational' }
    when Str { say 'string' }
}
```

🦋 Puoi trovare il codice sorgente nel file [match-by-type.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/given-when/match-by-type.raku).

## Output

```
rational
```

## Commenti

1. Qui il valore da confrontare è un tipo. Allora lo smart match controlla se il topic *è di quel tipo*. `3.14` non è un `Int`, quindi il primo `when` viene saltato.

1. In Raku, un numero decimale come `3.14` è un `Rat`, cioè un numero razionale. Quindi il secondo `when` corrisponde, e il programma stampa `rational`.

{% include nav.html %}
