---
title: Slinkums un dedzīgums
translations_gpt:
---

{% include menu.html %}

Daži saraksti Raku valodā tiek aprēķināti tikai tad, kad vajag to elementus. Tādi saraksti ir _slinki_. Prefiksi `lazy` un `eager` ļauj jums to vadīt tieši.

Prefikss `eager` liek Raku izveidot sarakstu **visu uzreiz**, nekavējoties:

```raku
my @squares = eager (1..3).map(* ** 2);
say @squares; # [1 4 9]
```

`map` radītu vērtības arī bez `eager`. Bet `eager` gādā, ka tās visas tiek aprēķinātas uzreiz, nevis vēlāk pēc pieprasījuma.

Prefikss `lazy` dara pretējo. Tas atzīmē sarakstu kā slinku. Tad tā elementi tiek radīti tikai tad, kad kods tos prasa. Tieši tas ļauj sarakstam būt bezgalīgam, vismaz teorētiski:

```raku
my $numbers = lazy (1 .. Inf);
say $numbers.is-lazy; # True
```

Metode `.is-lazy` to apstiprina. Saraksts nemēģinās jau iepriekš aprēķināt visus savus bezgalīgos elementus.

Tomēr šajā piemērā Raku tik un tā padarītu sarakstu slinku. Diapazons bez beigām, piemēram, `1 .. Inf`, jau ir slinks. Tāpēc `say (1 .. Inf).is-lazy` izdrukā `True` arī bez prefiksa. Ja šeit uzraksta `lazy`, tas neko nemaina. Tas tikai skaidri parāda jūsu nodomu. Prefikss ir patiešām noderīgs sarakstam, ko Raku citādi aprēķinātu dedzīgi. Ar `lazy` jūs varat padarīt tādu sarakstu slinku.

Lielākoties Raku pats izdara labu izvēli. Diapazoni un virknes ir slinkas, un parasta piešķiršana masīvam ir dedzīga. Izmantojiet šos prefiksus, kad šo izvēli vajag mainīt. Izmantojiet `eager`, lai dārgs aprēķins notiktu tagad. Izmantojiet `lazy`, lai atliktu aprēķinu, kas var būt liels vai bez beigām.

{% include nav.html %}
