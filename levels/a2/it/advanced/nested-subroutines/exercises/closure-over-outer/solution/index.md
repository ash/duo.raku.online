---
title: 'Solution: Chiusura sull''esterno'
translations_gpt: Italian
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
sub greet($name) {
    sub message {
        "Hello, $name!";
    }

    say message;
}

greet('Anna');
```

🦋 Puoi trovare il codice sorgente nel file [closure-over-outer.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/nested-subroutines/closure-over-outer.raku).

## Output

```
Hello, Anna!
```

## Commenti

1. `message` non prende argomenti. Ma può comunque usare `$name`. Una subroutine annidata tiene le variabili lessicali della subroutine esterna. Quindi il `$name` esterno è visibile dentro `message`.

1. Durante la chiamata `greet('Anna')`, `$name` vale `'Anna'`. Quindi `message` restituisce `Hello, Anna!`. L'helper condivide lo scope della subroutine esterna. Quindi un helper annidato è più di una semplice funzione nascosta.

{% include nav.html %}
