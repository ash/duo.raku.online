---
title: 'Solution: Chiusura sull''esterno'
translations_gpt: Italian
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. `message` non prende argomenti, ma può comunque usare `$name`. Una subroutine annidata cattura le variabili lessicali della subroutine che la contiene. Quindi il `$name` esterno è nello scope.

1. Quando `greet('Anna')` viene eseguita, `$name` vale `'Anna'`. Quindi `message` restituisce `Hello, Anna!`. Gli helper annidati condividono lo scope intorno a loro. Questo li rende più che semplici funzioni nascoste.

{% include nav.html %}
