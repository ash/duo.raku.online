---
title: Whatever zvaigzne 🆕
translations_gpt:
---

{% include menu.html %}

Jūs, iespējams, esat redzējuši `*` izteiksmēs, piemēram, `* * 2` vai `* %% 2`. Tās parādās `map` un `grep` izsaukumos. Šī `*` ir _Whatever zvaigznīte_. Izteiksme ap to izveido mazu funkciju ar vienu argumentu, turpat uz vietas. Šī sadaļa paskaidro, kas īsti ir zvaigznīte un kā tā saistās ar bloku. Tā arī parāda, kur viena pati zvaigznīte vienkārši nozīmē «cik nu vēlaties».

## Zvaigznīte veido funkciju

Kad izteiksmē ir `*`, Raku pārvērš visu izteiksmi par funkciju — `WhateverCode`. Šajā funkcijā zvaigznīte apzīmē argumentu:

```raku
my $double = * * 2;

say $double.^name; # WhateverCode
say $double(21);   # 42
```

`* * 2` ir funkcija, kas savu vienīgo argumentu reizina ar diviem. Tieši tāpēc `(1..5).map(* * 2)` darbojas. `map` saņem tieši tādu funkciju ar vienu argumentu.

## Whatever salīdzinājumā ar bloku

Whatever izteiksme ir īsāks veids, kā uzrakstīt funkciju. Šo funkciju varētu uzrakstīt arī kā bloku. Šie trīs varianti ir vienādi:

```raku
* * 2
{ $_ * 2 }
-> $x { $x * 2 }
```

Whatever forma nenosauc nevienu parametru. Bloka forma izmanto tēmas mainīgo `$_`, un bultiņas forma nosauc `$x`. Pēdējā, `-> $x { ... }`, pati par sevi ir maza funkcija. Pienācīgi jūs to apgūsiet sadaļā [Anonīmas apakšprogrammas](/lv/advanced/anonymous-subroutines). Šeit vienkārši lasiet to kā trešo veidu, kā uzrakstīt to pašu viena argumenta funkciju. Vienkāršai izteiksmei zvaigznīte ir visīsākā. Tāpēc tā ir tik izplatīta ar `map`, `grep` un `sort`:

```raku
say (1..5).map(* * 2);            # (2 4 6 8 10)
say (1..5).map({ $_ * 2 });       # (2 4 6 8 10)
say (1..5).map(-> $x { $x * 2 }); # (2 4 6 8 10)
```

Izvēlieties **bloku**, kad kodam vajag vairāk nekā vienu izteiksmi. Bloks ir labs arī tad, kad palīdz skaidrs parametra nosaukums. Izvēlieties **zvaigznīti**, kad pietiek ar īsu izteiksmi.

## Vairāk nekā viena zvaigznīte

Katra `*` izteiksmē ir savs arguments, pēc kārtas. Tātad divas zvaigznītes veido funkciju ar **diviem** argumentiem:

```raku
my $add = * + *;

say $add(3, 4); # 7
```

Šeit `* + *` ir funkcija ar diviem argumentiem, un tā tos saskaita. Piemēram, tā var saskaitīt uzkrāto summu un nākamo elementu.

## Whatever pati par sevi

Pati par sevi `*` nozīmē «cik nu ir»: cik vien ir vai bez ierobežojuma. Šeit ir divi bieži lietojumi:

```raku
my @a = 10, 20, 30;
say @a[*-1];        # 30  — * is the array length, so *-1 is the last index

say (1..*).head(3); # (1 2 3)  — 1..* is an open-ended range
```

Izteiksmē `@a[*-1]` zvaigznīte apzīmē elementu skaitu. Izteiksmē `1..*` tā nozīmē «bez augšējās robežas». Zvaigznīte var būvēt funkciju vai nozīmēt «cik nu vēlaties». Jebkurā gadījumā tā ir viens no noderīgākajiem saīsinājumiem Raku valodā.

{% include nav.html %}
