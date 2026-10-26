---
title: 'Solutio: Clausura super externo'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
sub greet($name) {
    sub message {
        "Hello, $name!";
    }

    say message;
}

greet('Anna');
```

🦋 Codicem fontem in archivo [closure-over-outer.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/nested-subroutines/closure-over-outer.raku) invenire potes.

## Exitus

```
Hello, Anna!
```

## Commentarii

1. `message` nulla argumenta accipit, sed tamen `$name` adhibere potest. Subroutina inclusa variabiles lexicales subroutinae continentis capit. Itaque `$name` exterior in ambitu est.

1. Cum `greet('Anna')` currit, `$name` est `'Anna'`. Itaque `message` `Hello, Anna!` reddit. Auxiliares inclusae ambitum circa se communicant. Hoc eas plus quam functiones occultas facit.

{% include nav.html %}
