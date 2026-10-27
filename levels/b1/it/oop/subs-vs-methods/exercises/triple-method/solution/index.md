---
title: 'Soluzione: Triplicare come metodo'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. Come metodo, `triple` appartiene all'oggetto e usa l'`n` dell'oggetto. Non gli passi niente.

1. Nella versione con la subroutine, i dati arrivano come argomento. Qui invece i dati vivono nell'oggetto. Entrambe le versioni danno `21`.

{% include nav.html %}
