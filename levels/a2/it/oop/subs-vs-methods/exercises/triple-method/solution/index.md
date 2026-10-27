---
title: 'Soluzione: Triplicare come metodo'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
class Number {
    has $.n;

    method triple {
        $.n * 3;
    }
}

say Number.new(n => 7).triple;
```

🦋 Trova il programma nel file [triple-method.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/subs-vs-methods/triple-method.raku).

## Output

```
21
```

## Commenti

1. Qui `triple` è un metodo. Appartiene all'oggetto. Lavora con l'`n` dell'oggetto stesso. Non gli passi niente.

1. Confrontalo con la subroutine. Lì i dati arrivano come argomento. Qui i dati sono nell'oggetto. Tutti e due i programmi danno `21`.

{% include nav.html %}
