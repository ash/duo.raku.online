---
title: 'Solvo: Salutu personon'
---

{% include menu.html %}

Jen unu ebla solvo al la tasko.

## Kodo

```raku
my $name = prompt 'What is your name? ';
say 'Hello, ', $name, '!';
```

🦋 Vi povas trovi la fontkodon en la dosiero [greet-a-person.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/greet-a-person.raku).

## Eligo

Rulu la programon kaj enigu nomon, kiam vi vidas la peton:

```console
$ raku exercises/scalar-variables/greet-a-person.raku 
What is your name? Inge
Hello, Inge!
```

## Komentoj

1. Post la peto, la uzanto enigas ĉenon. La programo tenas tiun ĉenon en skalara variablo, `$name`. Vi uzas la variablon en la listo, kiun vi pasas al la rutino `say`. Do la nomo aperas en la mesaĝo.

1. Pli bona maniero solvi ĉi tiun problemon estas uzi ĉeninterpoladon. Ni baldaŭ revenos al ĝi.

{% include nav.html %}
