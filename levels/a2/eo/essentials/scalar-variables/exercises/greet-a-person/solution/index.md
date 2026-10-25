---
title: 'Solvo: Salutu personon'
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
my $name = prompt 'What is your name? ';
say 'Hello, ', $name, '!';
```

🦋 Vi povas trovi la fontkodon en la dosiero [greet-a-person.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/greet-a-person.raku).

## Eligo

Rulu la programon. Ĝi demandas vian nomon. Enigu nomon:

```console
$ raku exercises/scalar-variables/greet-a-person.raku 
What is your name? Inge
Hello, Inge!
```

## Komentoj

1. La programo demandas nomon. La uzanto enigas ĉenon. La skalara variablo `$name` tenas tiun ĉenon. Poste la programo donas liston de valoroj al `say`. La variablo estas parto de tiu listo. Do la nomo aperas en la mesaĝo.

1. Estas pli bona maniero solvi ĉi tiun problemon. Ĝi uzas interpoladon de ĉenoj. Ni baldaŭ revenos al ĉi tiu problemo.

{% include nav.html %}
