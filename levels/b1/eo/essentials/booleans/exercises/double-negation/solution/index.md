---
title: 'Solvo: Duobla neado'
---

{% include menu.html %}

Por solvi la duan parton de la ekzerco, ni etendu la programon. Ni povas uzi la saman variablon denove:

## Kodo

```raku
my $value = False;
say !!$value;

$value = True;
say !!$value;
```

🦋 Vi povas trovi la plenan kodon en la dosiero [double-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/double-negation.raku).

## Komentoj

Antaŭ ol vi rulas la programon, ni pensu pri tio, kion ĝi presos. Estas du neado-operatoroj antaŭ la variablo. Ili funkcias kiel du apartaj neadoj. En la unua kazo, la valoro ŝanĝiĝas de `False` al `True`. Poste ĝi tuj ŝanĝiĝas reen de `True` al `False`. La dua kazo funkcias same. Post du neadoj, ni ricevas la originalan Boolean valoron.

## Eligo

La programo presas la sekvan eligon, kiu montras, ke ni pravis:

```console
$ raku exercises/booleans/double-negation.raku
False
True
```

{% include nav.html %}
