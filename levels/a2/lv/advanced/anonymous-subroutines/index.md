---
title: Anonīmas apakšprogrammas
translations_gpt:
---

{% include menu.html %}

Apakšprogrammai nav vajadzīgs nosaukums. Apakšprogramma bez nosaukuma ir _anonīma_. Jūs to rakstāt kā parastu apakšprogrammu, tikai bez nosaukuma. Parasti jūs to glabājat mainīgajā. Tad jūs varat to izsaukt vēlāk.

```raku
my $double = sub ($x) {
    $x * 2
};

say $double(5); # 10
```

Mainīgajā `$double` ir apakšprogramma. `$double(5)` izsauc šo apakšprogrammu ar argumentu `5`.

## Bultiņu bloki

Raku valodā ir īsāks veids, kā uzrakstīt to pašu. Tas ir _bultiņas bloks_. Tam pirms parametriem ir bultiņa `->`. Vārds `sub` nav vajadzīgs. Iekavas ap parametriem arī nav vajadzīgas:

```raku
my $double = -> $x {
    $x * 2
};

say $double(5); # 10
```

Tā parasti raksta mazu anonīmu apakšprogrammu.

## Sigils `&`

Varbūt jūs gribat izsaukumā lietot nosaukumu, nevis `$` mainīgo. Tad izveidojiet mainīgo ar sigilu `&`. Tagad jūs varat to izsaukt bez sigila. Tas darbojas tieši kā parasta apakšprogramma:

```raku
my &triple = -> $x {
    $x * 3
};

say triple(4); # 12
```

## Kā to iedot citai funkcijai

Anonīma apakšprogramma nav obligāti jāglabā mainīgajā. Tā ir vienkārši vērtība. Tāpēc jūs varat to iedot tieši funkcijai. Dažām funkcijām vajag šādu vērtību, piemēram, `map`, `grep` vai `sort`:

```raku
say (1, 2, 3).map(-> $x { $x * 2 }); # (2 4 6)
```

Šeit bultiņas bloks ir anonīmā apakšprogramma. `map` to izsauc vienu reizi katram elementam. Patiesībā jūs to darāt jau visu laiku. Jūs bieži iedodat `map` un `grep` bloku `{ ... }` vai `-> $x { ... }`. Katrs no tiem ir maza anonīma apakšprogramma. Jūs to rakstāt tieši tur, kur tā vajadzīga. Jūs tai vispirms nedodat nosaukumu.

{% include nav.html %}
