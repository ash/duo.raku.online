---
title: 'Solvo: Fermi super la ekstera'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. `message` prenas neniun argumenton, sed ĝi tamen povas uzi `$name`. Nestita subprogramo kaptas la leksikajn variablojn de la subprogramo, kiu enhavas ĝin. Do la ekstera `$name` estas en la videbla amplekso.

1. Kiam `greet('Anna')` ruliĝas, `$name` estas `'Anna'`. Do `message` redonas `Hello, Anna!`. Nestitaj helpantoj kunhavas la amplekson ĉirkaŭ si. Tio faras ilin pli ol nur kaŝitaj funkcioj.

{% include nav.html %}
