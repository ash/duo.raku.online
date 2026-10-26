---
title: Skribi trajton
translations_gpt:
---

{% include menu.html %}

Trajtoj estas normalaj multi-subrutinoj kun speciala nomo. Do vi povas skribi viajn proprajn trajtojn. Ĉu vi volas trajton `is something`? Tiam difinu `multi sub trait_mod:<is>`. Ĝiaj parametroj diras du aferojn. Ili diras, kun kio la trajto laboras. Ili ankaŭ donas la nomon de la trajto:

Ĉi tio estas unu el la pli malfacilaj partoj de Raku. Ne zorgu, se ĝi aspektas malfacila. Vi povas bone uzi la enkonstruitajn trajtojn sen ĉi tiu scio. Vi ne bezonas scii, kiel ili estas faritaj. Vi malofte bezonos skribi trajton mem. Ĉi tiu paĝo nur montras al vi, kiel trajtoj funkcias interne.

```raku
my @traced;

multi sub trait_mod:<is>(Routine:D $r, :$traced!) {
    @traced.push($r.name);
}

sub foo() is traced { }
sub bar() is traced { }

say @traced; # [foo bar]
```

Rigardu la subskribon. La unua parametro estas `Routine:D $r`. Ĝi estas la aĵo, kiu havas la trajton. Ĉi tie, ĝi estas subrutino. La `:D` estas tipa _rideto_. Ĝi bezonas **difinitan** valoron. Tio estas vera rutina objekto. Ĝi ne estas la nedifinita tipo `Routine` mem. Ekzistas du aliaj ridetoj. `:U` bezonas la nedifinitan tipobjekton. `:_` akceptas ambaŭ. La nomita parametro `:$traced!` estas la nomo de la trajto. Ĉi tiu parametro estas la kialo, kial `is traced` vokas ĉi tiun subrutinon. Trajtoj ruliĝas dum **kompilado**. Do Raku registras `foo` kaj `bar` tuj, kiam ĝi legas iliajn deklarojn. Kiam la programo ruliĝas, `@traced` jam havas ambaŭ nomojn. Vi eĉ povas movi la linion `say @traced` supren, antaŭ la du difinojn `sub`. Ĝi ankoraŭ presas `[foo bar]`.

Ĉi tiu malgranda trajto nur registras nomojn. Sed la sama ideo povas fari multe pli. Ekzemple, trajto povas envolvi rutinon por aldoni protokoladon. Ĝi povas kontroli atributon. Aŭ ĝi povas alfiksi metadatumojn, tio estas, kromajn datumojn pri la kodo. Ĉi tie, la unua parametro estas `Routine`. Vi ankaŭ povas fari ĝin `Attribute` aŭ `Variable`. Tiam la trajto laboras kun atributoj aŭ variabloj. Trajtoj tenas la sintakson de deklaroj en Raku malfermita. Vi ĉiam povas aldoni novajn trajtojn. La enkonstruita `is rw` kaj via propra `is traced` estas faritaj same.

{% include nav.html %}
