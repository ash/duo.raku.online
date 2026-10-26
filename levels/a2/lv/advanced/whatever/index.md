---
title: Whatever zvaigzne 🆕
translations_gpt:
---

{% include menu.html %}

Varbūt jūs esat redzējuši `*` izteiksmēs, piemēram, `* * 2` vai `* %% 2`. Jūs tās lietojat ar `map` un `grep`. Šī `*` ir _Whatever zvaigznīte_. Izteiksme ap to izveido mazu funkciju. Funkcijai ir viens arguments. Raku to izveido turpat, uz vietas. Šī sadaļa paskaidro, kas īsti ir zvaigznīte. Tā arī salīdzina zvaigznīti ar bloku. Un tā parāda, kur viena pati zvaigznīte vienkārši nozīmē «cik nu vēlaties».

## Zvaigznīte veido funkciju

Izteiksmē var būt `*`. Tad Raku pārvērš visu izteiksmi par funkciju. Šī funkcija ir `WhateverCode`. Tajā zvaigznīte apzīmē argumentu:

```raku
my $double = * * 2;

say $double.^name; # WhateverCode
say $double(21);   # 42
```

`* * 2` ir funkcija. Tā ņem vienu argumentu un reizina to ar diviem. Tāpēc `(1..5).map(* * 2)` darbojas. `map` saņem tieši šādu funkciju ar vienu argumentu.

## Whatever vai bloks

Whatever izteiksme ir īss veids, kā uzrakstīt funkciju. To pašu funkciju jūs varat uzrakstīt arī kā bloku. Šīs trīs rindas dara vienu un to pašu:

```raku
* * 2
{ $_ * 2 }
-> $x { $x * 2 }
```

Whatever formā nav parametra nosaukuma. Bloka forma lieto tēmas mainīgo `$_`. Bultiņas formā ir nosaukums `$x`. Pēdējā, `-> $x { ... }`, pati ir maza funkcija. Par to jūs uzzināsiet vēlāk, sadaļā [Anonīmas apakšprogrammas](/lv/advanced/anonymous-subroutines). Šeit vienkārši uztveriet to kā trešo tās pašas funkcijas formu. Šai funkcijai ir viens arguments. Vienkāršai izteiksmei zvaigznīte ir visīsākā. Tāpēc to bieži lieto ar `map`, `grep` un `sort`:

```raku
say (1..5).map(* * 2);            # (2 4 6 8 10)
say (1..5).map({ $_ * 2 });       # (2 4 6 8 10)
say (1..5).map(-> $x { $x * 2 }); # (2 4 6 8 10)
```

Lietojiet **bloku**, ja kodam vajag vairāk nekā vienu izteiksmi. Bloks ir labāks arī tad, ja palīdz skaidrs parametra nosaukums. Lietojiet **zvaigznīti**, ja pietiek ar vienu īsu izteiksmi.

## Vairāk nekā viena zvaigznīte

Katra `*` izteiksmē ir atsevišķs arguments. Tie nāk pēc kārtas. Tātad divas zvaigznītes veido funkciju ar **diviem** argumentiem:

```raku
my $add = * + *;

say $add(3, 4); # 7
```

Šeit `* + *` ir funkcija ar diviem argumentiem. Tā tos saskaita. Piemēram, tie var būt līdzšinējā summa un nākamais elements.

## Whatever zvaigznīte viena pati

Viena pati zvaigznīte, `*`, nozīmē «cik nu ir». Tā var nozīmēt «cik vien ir». Tā var nozīmēt arī «bez ierobežojuma». Šeit ir divi bieži lietojumi:

```raku
my @a = 10, 20, 30;
say @a[*-1];        # 30  — * is the array length, so *-1 is the last index

say (1..*).head(3); # (1 2 3)  — 1..* is an open-ended range
```

Izteiksmē `@a[*-1]` zvaigznīte ir elementu skaits. Izteiksmē `1..*` zvaigznīte nozīmē «bez augšējās robežas». Dažreiz zvaigznīte izveido funkciju. Dažreiz tā nozīmē «cik nu vēlaties». Jebkurā gadījumā tā ir viens no Raku noderīgākajiem saīsinājumiem.

{% include nav.html %}
