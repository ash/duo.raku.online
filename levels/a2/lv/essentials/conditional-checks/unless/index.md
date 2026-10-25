---
title: 'Izmantojot `unless`'
---

{% include menu.html %}

[`!` operators](/lv/essentials/booleans/operations#negation) viegli pārvērš jebkuru Būla nosacījumu par pretējo. Bet dažreiz šis `!` padara izteiksmi sarežģītāku. Tad to ir grūtāk lasīt. Šādos gadījumos `unless` var palīdzēt.

`unless` nosacījumam jābūt `False`. Tad Raku izpilda bloku.

```raku
my $broken = False;

# ...Kaut kas var iestatīt $broken uz True šeit...
    
unless $broken {
    say "Neuztraucies!";
    say "Esi laimīgs!";
}
```

Šeit ir divas vienas un tās pašas programmas versijas. Salīdziniet tās:

Ar `if` un `!`:

```raku
if !$broken { . . . }
```

Ar `unless`:

```raku
unless $broken { . . . }
```

Tātad jums ir izvēle. Katrā situācijā izvēlieties to, kas jums šķiet labāk.

Pēc `unless` jūs nevarat likt `else` vai `elsif` bloku. Tam jums jāizmanto `if`.

{% include nav.html %}
