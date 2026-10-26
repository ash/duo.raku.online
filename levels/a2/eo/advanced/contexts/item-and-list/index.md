---
title: Era kaj lista kunteksto
---

{% include menu.html %}

Estas du pliaj kuntekstoj. Ili decidas unu aferon. Ĉu valoro estas **listo** de pluraj valoroj? Aŭ ĉu ĝi estas unu sola **ero**? La sigeloj `@` kaj `$` montras ĉi tiun diferencon.

En _lista kunteksto_, tabelo disiĝas en siajn apartajn elementojn. Buklo `for` metas sian argumenton en listan kuntekston. Do la buklo iras tra ĉiu elemento:

```raku
my @a = 1, 2, 3;

my $count = 0;
$count++ for @a;
say $count; # 3
```

En _era kunteksto_, la sama tabelo estas unu sola valoro. La kuntekstigilo `$( … )` agordas eran kuntekston. Nun la buklo vidas nur unu aferon. Do ĝi ruliĝas unu fojon:

```raku
my @a = 1, 2, 3;

my $count = 0;
$count++ for $(@a);
say $count; # 1
```

Era kunteksto klarigas ankaŭ ĉi tion. Vi asignas tabelon al skalaro. La skalaro ricevas la tutan tabelon kiel unu eron. Ĝi ne kopias la elementojn. La kialo estas, ke `my $x = @a` metas `@a` en eran kuntekston. Notu, ke ĉi tiu unu ero povas esti alia ujo. Kaj ĉi tiu ujo povas havi multajn erojn en si:

```raku
my @a = 1, 2, 3;

my $var = @a;
say $var;      # [1 2 3]
say $var.WHAT; # (Array)
```

`$var` estas skalara ujo. Do ĝi nun tenas unu solan objekton. Ĉi tiu objekto estas `Array`. Vi povas facile kontroli tion. Uzu `$var` kiel specon de tabela referenco. Tiel aliaj lingvoj nomas ĝin:

```raku
say $var[1]; # 2
```

La kuntekstigilo `@( … )` faras la malon. Ĝi agordas listan kuntekston.

Ekzistas ankaŭ _sink-kunteksto_. En sink-kunteksto, neniu uzas la valoron de deklaro. Raku simple forĵetas la valoron. Ekzemple, linio povas esti tie nur pro sia flanka efiko. Flanka efiko estas kroma ago de la kodo, kiel presado. Foje valoro en sink-kunteksto faras nenion utilan. Tiam Raku povas averti vin pri «senutila uzo». Tio estas utila sugesto. Vi verŝajne forgesis uzi rezulton.

La sigelo, `$` aŭ `@`, vere estas elekto de kunteksto. Foje vi bezonas alian kuntekston. Tiam la kuntekstigiloj `$( )` kaj `@( )` ŝanĝas ĝin.

{% include nav.html %}
