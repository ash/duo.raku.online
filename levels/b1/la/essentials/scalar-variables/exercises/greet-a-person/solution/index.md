---
title: 'Solutio: Salve personam'
---

{% include menu.html %}

Hic est una solutio possibilis muneris.

## Codex

```raku
my $name = prompt 'Quod est nomen tuum? ';
say 'Salve, ', $name, '!';
```

🦋 Codicem fontem invenire potes in fasciculo [saluta-hominem.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/greet-a-person.raku).

## Exitus

Programma curre et nomen intra cum rogationem vides:

```console
$ raku exercises/scalar-variables/greet-a-person.raku 
Quod est nomen tuum? Inge
Salve, Inge!
```

## Commentarii

1. Post rogationem usor filum intrat. Programma hoc filum in variabili scalari, `$name`, tenet. Variabili uteris in indice quem functioni `say` transmittis. Itaque nomen in nuntio apparet.

1. Hanc quaestionem melius solvis si interpolatione filorum uteris. Mox ad eam redibimus.

{% include nav.html %}
