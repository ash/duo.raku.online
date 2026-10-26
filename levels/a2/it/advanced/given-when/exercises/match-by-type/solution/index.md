---
title: 'Solution: Matching per tipo'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

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

1. A volte `when` ha un tipo. Allora lo smart match controlla se il topic *è di questo tipo*. `3.14` non è un `Int`. Così Raku salta il primo `when`.

1. In Raku, un numero con il punto decimale, come `3.14`, è un `Rat`. Un `Rat` è un numero razionale, cioè una frazione. Così il secondo `when` corrisponde. Il programma stampa `rational`.

{% include nav.html %}
