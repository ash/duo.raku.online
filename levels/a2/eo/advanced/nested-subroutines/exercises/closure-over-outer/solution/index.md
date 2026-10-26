---
title: 'Solvo: Fermi super la ekstera'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
sub greet($name) {
    sub message {
        "Hello, $name!";
    }

    say message;
}

greet('Anna');
```

🦋 Vi povas trovi la fontkodon en la dosiero [closure-over-outer.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/nested-subroutines/closure-over-outer.raku).

## Eligo

```
Hello, Anna!
```

## Komentoj

1. `message` prenas neniun argumenton. Sed ĝi tamen povas uzi `$name`. Nestita subprogramo konservas la leksikajn variablojn de la subprogramo ĉirkaŭ ĝi. Do la ekstera `$name` estas videbla ene de `message`.

1. Dum la voko `greet('Anna')`, `$name` estas `'Anna'`. Do `message` redonas `Hello, Anna!`. La helpanto kunhavas la amplekson de la subprogramo ĉirkaŭ ĝi. Do nestita helpanto estas pli ol nur kaŝita funkcio.

{% include nav.html %}
