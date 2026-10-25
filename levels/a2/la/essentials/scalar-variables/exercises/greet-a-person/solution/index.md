---
title: 'Solutio: Salve personam'
---

{% include menu.html %}

Hoc modo munus solvere potes.

## Codex

```raku
my $name = prompt 'Quod est nomen tuum? ';
say 'Salve, ', $name, '!';
```

🦋 Codicem fontem invenire potes in fasciculo [saluta-hominem.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/greet-a-person.raku).

## Exitus

Programma curre. Nomen tuum petit. Nomen intra:

```console
$ raku exercises/scalar-variables/greet-a-person.raku 
Quod est nomen tuum? Inge
Salve, Inge!
```

## Commentarii

1. Programma nomen petit. Usor filum intrat. Variabilis scalaris `$name` hoc filum tenet. Deinde programma indicem valorum functioni `say` dat. Variabilis pars huius indicis est. Itaque nomen in nuntio apparet.

1. Est modus melior pro hac quaestione. Is interpolatione filorum utitur. Mox ad hanc quaestionem redimus.

{% include nav.html %}
