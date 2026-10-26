---
title: Slinkums un dedzīgums
translations_gpt:
---

{% include menu.html %}

Raku aprēķina dažus sarakstus tikai tad, kad tam vajag to elementus. Tādi saraksti ir _slinki_. Ar prefiksiem `lazy` un `eager` jūs to varat vadīt paši.

Prefikss `eager` liek Raku izveidot sarakstu **visu uzreiz**, tieši tagad:

```raku
my @squares = eager (1..3).map(* ** 2);
say @squares; # [1 4 9]
```

`map` dod vērtības arī bez `eager`. Bet `eager` gādā, ka Raku tās visas aprēķina uzreiz. Tas negaida, līdz tās jums vajag.

Prefikss `lazy` dara pretējo. Tas atzīmē sarakstu kā slinku. Tad Raku izveido katru elementu tikai tad, kad kods to prasa. Tāpēc sarakstam teorētiski var nebūt beigu:

```raku
my $numbers = lazy (1 .. Inf);
say $numbers.is-lazy; # True
```

Metode `.is-lazy` parāda, ka saraksts ir slinks. Tāpēc tas nemēģina vispirms aprēķināt visus savus elementus. Un šiem elementiem nav beigu.

Bet šajā piemērā Raku tik un tā padara sarakstu slinku. Diapazons bez beigām, piemēram, `1 .. Inf`, jau ir slinks. Tāpēc `say (1 .. Inf).is-lazy` izdrukā `True` arī bez prefiksa. Šeit `lazy` neko nemaina. Tas tikai skaidri parāda, ko jūs gribat. Prefikss ir patiešām noderīgs citā gadījumā. Dažreiz Raku aprēķina sarakstu dedzīgi, visu uzreiz. Ar prefiksu jūs varat padarīt tādu sarakstu slinku.

Lielākoties Raku pats izdara labu izvēli. Diapazoni un virknes ir slinkas. Parasta piešķiršana masīvam ir dedzīga. Izmantojiet šos prefiksus, kad gribat citu izvēli. Izmantojiet `eager`, lai lēns aprēķins notiktu tagad. Izmantojiet `lazy`, lai atliktu ļoti lielu vai bezgalīgu aprēķinu.

{% include nav.html %}
