---
title: Kreado kaj vokado de funkcioj
---

{% include menu.html %}

Nun vi estas en la lasta sekcio de la unua parto de la kurso. Post ĝi, vi scios sufiĉe por skribi preskaŭ _ĉiun_ programon en Raku. La temo de ĉi tiu sekcio estas _funkcioj_. Oni ankaŭ nomas ilin _subrutinoj_, aŭ simple _rutinoj_.

Funkcio estas nomita parto de kodo, kiun vi povas uzi multajn fojojn. Vi povas _voki_ funkcion el diversaj lokoj en la programo.

## Kreado de funkcio

Por krei funkcion, skribu la ŝlosilvorton `sub` kaj poste la nomon de la funkcio. La korpo de la funkcio estas inter paro de kurbaj krampoj.

```raku
sub saluton {
    say 'Saluton, Mondo!';
}
```

## Uzado de funkcio

Por uzi la funkcion, simple skribu ĝian nomon tie, kie vi volas voki ĝin. En Raku, la difino de la funkcio povas veni antaŭ la voko aŭ post ĝi.

```raku
say 'Jen kion la unua programo kutime presas:';
saluton;    

sub saluton {
    say 'Saluton, Mondo!';
}
```

La programo presas ambaŭ mesaĝojn:

```console
$ raku t.raku
Jen kion la unua programo kutime presas:
Saluton, Mondo!
```

Nun ni rigardos pliajn detalojn pri tio, kiel krei kaj uzi funkciojn.

{% include nav.html %}
