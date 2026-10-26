---
title: 'Solutio: Clausura super externo'
translations_gpt:
---

{% include menu.html %}

Hoc modo opus solvere potes.

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

1. `message` nulla argumenta accipit. Sed tamen `$name` adhibere potest. Subroutina inclusa variabiles lexicales subroutinae exterioris servat. Itaque `$name` exterior intra `message` visibilis est.

1. In vocatione `greet('Anna')` `$name` est `'Anna'`. Itaque `message` `Hello, Anna!` reddit. Auxiliaris eundem ambitum habet quem subroutina exterior. Itaque auxiliaris inclusa plus est quam functio occulta.

{% include nav.html %}
