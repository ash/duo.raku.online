---
title: Anonīmas apakšprogrammas
translations_gpt:
---

{% include menu.html %}

Apakšprogrammai nav obligāti jābūt nosaukumam. Pēc izskata _anonīma_ apakšprogramma ir tāda pati kā parasta, tikai bez nosaukuma. Parasti to glabā mainīgajā, lai vēlāk to varētu izsaukt.

```raku
my $double = sub ($x) {
    $x * 2
};

say $double(5); # 10
```

Mainīgais `$double` satur apakšprogrammu. Tad `$double(5)` to izsauc ar argumentu `5`.

## Bultiņu bloki

Raku valodā ir īsāks veids, kā uzrakstīt to pašu: _bultiņas bloks_. Bultiņa `->` atrodas pirms parametriem. Nav vajadzīgs ne vārds `sub`, ne iekavas ap tiem:

```raku
my $double = -> $x {
    $x * 2
};

say $double(5); # 10
```

Visbiežāk mazu anonīmu apakšprogrammu raksta tieši tā.

## Sigils `&`

Varbūt jūs gribat izsaukt apakšprogrammu pēc nosaukuma, nevis caur `$` mainīgo. Tādā gadījumā deklarējiet mainīgo ar sigilu `&`. Tad to var izsaukt bez sigila, tieši tāpat kā parastu apakšprogrammu:

```raku
my &triple = -> $x {
    $x * 3
};

say triple(4); # 12
```

## Kā to nodot citai funkcijai

Anonīma apakšprogramma nemaz nav jāglabā mainīgajā. Tā ir vienkārši vērtība. Tāpēc to var nodot tieši funkcijai, kurai tāda vajadzīga. Piemēri ir `map`, `grep` vai `sort`:

```raku
say (1, 2, 3).map(-> $x { $x * 2 }); # (2 4 6)
```

Šeit bultiņas bloks ir anonīmā apakšprogramma. `map` to izsauc vienu reizi katram elementam. Patiesībā jūs to esat darījuši visu laiku. Jūs esat nodevuši `map` un `grep` daudzus blokus `{ ... }` un `-> $x { ... }`. Katrs no tiem ir maza anonīma apakšprogramma. Jūs to rakstāt tieši tur, kur tā vajadzīga, nevis vispirms dodat tai nosaukumu.

{% include nav.html %}
