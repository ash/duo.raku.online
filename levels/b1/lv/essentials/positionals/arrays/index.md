---
title: Masīvi
---

{% include menu.html %}

Masīvi ir agregātu datu tipi, kas nozīmē, ka tie var glabāt vairāk nekā vienu vērtību. Ar to tie atšķiras no [skalārajiem elementiem](/lv/essentials/scalar-variables). Masīva elementus var indeksēt (jeb _apzīmēt ar apakšindeksiem_). Citiem vārdiem sakot, katram elementam ir pozīcija. Tāpēc šāda veida datiem ir vispārējs nosaukums: pozicionālie dati.

Masīvu mainīgajiem ir cits sigils: `@`. Noteikumi mainīgā nosaukumam ir tādi paši kā [skalārajiem mainīgajiem](/lv/essentials/scalar-variables/identifiers/).

```raku
my @cities;
```

Tagad mēs esam izveidojuši masīvu ar nosaukumu `@cities`. Jūs varat to aizpildīt ar dažām vērtībām:

```raku
@cities = 'Parīze', 'Roma', 'Berlīne';
```

Jūs varat arī iestatīt vērtības uzreiz, kad izveidojat masīvu:

```raku
my @cities = 'Parīze', 'Roma', 'Berlīne';
```

## Indeksēšana

Lai iegūtu vienu masīva elementu, pievienojiet iekavu pāri aiz tā nosaukuma:

```raku
say @cities[1];
```

Ievērojiet, ka sigils vienmēr paliek tāds pats. Elementus skaita no nulles, tāpēc mūsu piemērā elements `@cities[1]` ir `'Roma'`.

Masīvi ir maināmi, kas nozīmē, ka jūs varat tos mainīt. Lai mainītu elementu, vienkārši piešķiriet tam jaunu vērtību:

```raku
@cities[0] = 'Roma';
@cities[1] = 'Parīze';
```

Tagad izteiksme `say @cities[1]` izdrukā jauno vērtību `'Parīze'`.

## Izmērs

Masīva garums ir tā elementu skaits. Lai iegūtu pašreizējo garumu, izmantojiet metodi `elems`:

```raku
say @cities.elems; # 3
```

Ja masīvs parādās tur, kur gaida skaitli, jūs saņemat tā izmēru:

```raku
say +@cities; # 3
```

Šeit [`+` prefiksa operatoram](/lv/essentials/coercion/prefixes) ir vajadzīga skaitliska vērtība no tā argumenta. Tieši tāpēc `+@cities` dod `3`.

{% include nav.html %}
