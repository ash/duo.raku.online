---
title: Somas un maisījumi
translations_gpt:
---

{% include menu.html %}

Kopa atceras tikai to, _vai_ vērtība tajā ir. Dažreiz jūs gribat zināt arī, _cik reižu_ tā tur ir. Tam ir `Bag`. Tas katrai vērtībai glabā skaitu.

Lai izveidotu maisu, izmantojiet rutīnu `bag`. Maiss nesavieno atkārtotas vērtības vienā. Tas tās saskaita:

```raku
my $b = bag(<a b a c a>);
say $b<a>; # 3
say $b<b>; # 1
```

Prasiet maisam vērtību ar indeksu `< >`. Jūs uzzināt, cik reižu šī vērtība nonāca maisā. Metode `total` saskaita visus skaitus:

```raku
say bag(<a b a c a>).total; # 5
```

`Mix` ir līdzīgs maisam. Bet maisījumā skaitus sauc par _svariem_. Svaram nav jābūt veselam skaitlim. Tas var būt arī daļskaitlis. Jūs varat norādīt svarus paši. Savienojiet katru vērtību pārī ar tās svaru. Pēc tam pārvērtiet sarakstu par maisījumu ar `.Mix`:

```raku
my $m = (flour => 2.5, sugar => 0.75).Mix;
say $m<flour>; # 2.5
say $m.total;  # 3.25
```

Svaru jūs iegūstat ar `< >`. Svarus jūs saskaitāt ar `total`. Abi darbojas tāpat kā maisam. Tikai skaitļiem nav jābūt veseliem. Šeit `total` saskaita svarus `2.5` un `0.75`. Rezultāts ir `3.25`. Tātad `total` dod svaru summu. Tas neskaita vērtības. Maisi un maisījumi noder, kad jums jāskaita daudzumi. Piemēram, maiss var saskaitīt vārdus tekstā. Tas pasaka, cik bieži parādās katrs vārds. Maisījums var dot svarus izvēles variantiem.

{% include nav.html %}
