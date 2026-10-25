---
title: 'Solvo: Duobla neado'
---

{% include menu.html %}

Ni aldonu kodon por la dua parto de la tasko. Ni uzas la saman variablon denove:

## Kodo

```raku
my $value = False;
say !!$value;

$value = True;
say !!$value;
```

🦋 Vi povas trovi la plenan kodon en la dosiero [double-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/double-negation.raku).

## Komentoj

Ankoraŭ ne rulu la programon. Unue, ni pensu: kion ĝi presas? Estas du neado-operatoroj antaŭ la variablo. Neado ŝanĝas `False` al `True` kaj `True` al `False`. Ĉi tie, la du `!` funkcias kiel du apartaj neado-operatoroj. En la unua kazo, la unua neado ŝanĝas `False` al `True`. Poste la dua neado tuj ŝanĝas ĝin reen al `False`. La dua kazo funkcias same. Post du neadoj, ni ricevas la Boolean valoron de la komenco.

## Eligo

Jen la eligo de la programo. Ĝi montras, ke ni pravis:

```console
$ raku exercises/booleans/double-negation.raku
False
True
```

{% include nav.html %}
