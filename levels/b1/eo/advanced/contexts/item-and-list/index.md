---
title: Era kaj lista kunteksto
---

{% include menu.html %}

Du pliaj kuntekstoj decidas, ĉu io estas **listo** aŭ unuopa **ero**. Listo havas plurajn valorojn. La sigeloj `@` kaj `$` baziĝas sur ĉi tiu diferenco.

En _lista kunteksto_, tabelo disvastiĝas en siajn elementojn. Buklo `for` metas sian argumenton en listan kuntekston, do ĝi iras tra ĉiu elemento:

```raku
my @a = 1, 2, 3;

my $count = 0;
$count++ for @a;
say $count; # 3
```

En _era kunteksto_, la sama tabelo agas kiel unu sola valoro. La kuntekstigilo `$( … )` agordas eran kuntekston. Do nun la buklo vidas nur unu aferon kaj ruliĝas unufoje:

```raku
my @a = 1, 2, 3;

my $count = 0;
$count++ for $(@a);
say $count; # 1
```

Tio klarigas, kio okazas, kiam vi asignas tabelon al skalaro. La tabelo estas pakita en unuopan eron, kaj ĝiaj elementoj ne estas kopiitaj. La kialo estas, ke `my $x = @a` metas `@a` en eran kuntekston. Notu, ke tiu unuopa ero povas esti alia ujo kun multaj eroj en ĝi:

```raku
my @a = 1, 2, 3;

my $var = @a;
say $var;      # [1 2 3]
say $var.WHAT; # (Array)
```

La variablo `$var` estas skalara ujo, do ĝi nun tenas unuopan objekton. Ĉi tiu objekto estas `Array`. Vi povas facile pruvi tion. Uzu `$var` kiel specon de tabela referenco, kiel aliaj lingvoj nomus ĝin:

```raku
say $var[1]; # 2
```

Ĝia partnero, la kuntekstigilo `@( … )`, faras la malon kaj agordas listan kuntekston.

Ekzistas ankaŭ _sink-kunteksto_. Ĝi estas la kunteksto de deklaro, kies valoro estas forĵetata. Ekzemple, linio povas esti tie nur pro sia flanka efiko. Foje valoro en sink-kunteksto faras nenion utilan. Tiam Raku povas averti pri «senutila uzo». Tio estas utila sugesto, ke vi forgesis uzi rezulton.

Kiam vi elektas sigelon, `$` aŭ `@`, vi vere elektas kuntekston. Kie necese, la kuntekstigiloj `$( )` kaj `@( )` permesas al vi ŝanĝi ĝin.

{% include nav.html %}
