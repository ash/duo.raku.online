---
title: Kreado kaj vokado de funkcioj
---

{% include menu.html %}

La unua parto de la kurso finiĝas per ĉi tiu sekcio. Post ĝi, vi povas skribi preskaŭ _ĉiun_ programon en Raku. Ĉi tiu sekcio temas pri _funkcioj_. Funkcioj havas ankaŭ aliajn nomojn: _subrutinoj_, aŭ simple _rutinoj_.

Funkcio estas parto de kodo kun sia propra nomo. Vi povas uzi ĝin multajn fojojn. Por uzi funkcion, vi _vokas_ ĝin. Vi povas voki ĝin el diversaj lokoj en la programo.

## Kreado de funkcio

Por krei funkcion, skribu la ŝlosilvorton `sub`. Post ĝi, skribu la nomon de la funkcio. Metu la korpon de la funkcio en kurbajn krampojn.

```raku
sub saluton {
    say 'Saluton, Mondo!';
}
```

## Uzado de funkcio

Por uzi la funkcion, simple skribu ĝian nomon. Skribu ĝin tie, kie vi volas voki la funkcion. En Raku, vi povas krei la funkcion antaŭ ĉi tiu loko. Vi ankaŭ povas krei ĝin post ĉi tiu loko.

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

Nun ni vidu pli pri kreado kaj uzado de funkcioj.

{% include nav.html %}
