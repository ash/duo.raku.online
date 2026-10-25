---
title: Masīvi
---

{% include menu.html %}

Masīvi ir agregātu datu tipi. Tas nozīmē, ka masīvs var glabāt vairāk nekā vienu vērtību. Ar to masīvi atšķiras no [skalārajiem elementiem](/lv/essentials/scalar-variables). Jūs varat indeksēt masīva elementus jeb _apzīmēt tos ar apakšindeksiem_. Citiem vārdiem sakot, katram elementam ir pozīcija. Tāpēc mēs šāda veida datus saucam par pozicionāliem.

Masīva mainīgajiem ir cits sigils: `@`. Nosaukuma noteikumi ir tādi paši kā [skalārajiem mainīgajiem](/lv/essentials/scalar-variables/identifiers/).

```raku
my @cities;
```

Tagad mums ir masīvs. Tā nosaukums ir `@cities`. Jūs varat ielikt tajā dažas vērtības:

```raku
@cities = 'Parīze', 'Roma', 'Berlīne';
```

Jūs varat arī izveidot masīvu uzreiz ar vērtībām:

```raku
my @cities = 'Parīze', 'Roma', 'Berlīne';
```

## Indeksēšana

Lai iegūtu vienu masīva elementu, izmantojiet iekavu pāri. Lieciet tās aiz mainīgā nosaukuma:

```raku
say @cities[1];
```

Ievērojiet, ka sigils nemainās. Tas vienmēr ir `@`. Raku skaita elementus no nulles. Tāpēc mūsu piemērā `@cities[1]` ir `'Roma'`.

Masīvi ir maināmi. Tas nozīmē, ka jūs varat tos mainīt. Lai mainītu elementu, vienkārši piešķiriet tam jaunu vērtību:

```raku
@cities[0] = 'Roma';
@cities[1] = 'Parīze';
```

Pēc tam izteiksme `say @cities[1]` izdrukā jauno vērtību `'Parīze'`.

## Izmērs

Kas ir masīva garums? Tas ir tā elementu skaits. Lai to iegūtu, izmantojiet metodi `elems`:

```raku
say @cities.elems; # 3
```

Dažreiz jūs izmantojat masīvu tur, kur Raku vajag skaitli. Tad jūs saņemat masīva izmēru:

```raku
say +@cities; # 3
```

Šeit [`+` prefiksa operatoram](/lv/essentials/coercion/prefixes) vajag skaitli no tā argumenta. Tāpēc `+@cities` rezultāts ir `3`.

{% include nav.html %}
