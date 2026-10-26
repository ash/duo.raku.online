---
title: Skribi trajton
translations_gpt:
---

{% include menu.html %}

Trajtoj estas ordinaraj multi-subrutinoj kun speciala nomo, do vi povas skribi viajn proprajn. Por aldoni trajton nomatan `is something`, difinu `multi sub trait_mod:<is>`. Ĝiaj parametroj diras, al kio la trajto aplikiĝas, kaj donas al la trajto ĝian nomon:

Ĉi tio estas unu el la pli progresintaj partoj de Raku. Ne maltrankviliĝu, se ĝi ŝajnas komplika. Vi povas uzi la enkonstruitajn trajtojn tute bone sen scii, kiel ili estas faritaj. Vi malofte bezonos skribi tian mem. Do prenu ĉi tiun paĝon kiel rigardon al tio, kiel la aferoj funkcias interne.

```raku
my @traced;

multi sub trait_mod:<is>(Routine:D $r, :$traced!) {
    @traced.push($r.name);
}

sub foo() is traced { }
sub bar() is traced { }

say @traced; # [foo bar]
```

Legu la subskribon. La unua parametro, `Routine:D $r`, estas la aĵo, al kiu la trajto estas alfiksita. Ĉi tie, ĝi estas subrutino. La `:D` estas tipa _rideto_, kiu postulas **difinitan** valoron. Tio signifas veran rutinan objekton, ne la nedifinitan tipon `Routine` mem. Ĝiaj partneroj estas `:U`, kiu postulas la nedifinitan tipobjekton, kaj `:_`, kiu akceptas ambaŭ. La nomita parametro `:$traced!` estas la nomo de la trajto mem. Ĉar ĉi tiu parametro ĉeestas, `is traced` vokas ĉi tiun subrutinon. Trajtoj ruliĝas dum **kompilado**. Do `foo` kaj `bar` estas registritaj, tuj kiam ili estas deklaritaj. Kiam la programo ruliĝas, `@traced` jam listigas ilin. Vi eĉ povus movi la linion `say @traced` antaŭ la du difinojn `sub`. Ĝi ankoraŭ presus `[foo bar]`.

Ĉi tiu malgranda trajto nur registras nomojn, sed la sama ideo povas fari multe pli. Ĝi povas envolvi rutinon por aldoni protokoladon, kontroli atributon aŭ aldoni metadatumojn. La unua parametro ankaŭ povas esti `Attribute` aŭ `Variable` anstataŭ `Routine`. Tiam la trajto aplikiĝas al atributoj aŭ variabloj. Per trajtoj Raku tenas sian deklaran sintakson malfermita. La enkonstruita `is rw` kaj via propra `is traced` estas faritaj same.

{% include nav.html %}
