---
title: 'Izmantojot `unless`'
---

{% include menu.html %}

Ar [`!` operatoru](/lv/essentials/booleans/operations#negation) jūs varat viegli pārvērst jebkuru Būla nosacījumu par pretējo. Bet dažreiz papildu `!` padara izteiksmi smagāku un grūtāk lasāmu. Šādos gadījumos `unless` var būt jūsu draugs.

Raku izpilda `unless` bloku, kad tā nosacījums ir `False`.

```raku
my $broken = False;

# ...Kaut kas var iestatīt $broken uz True šeit...
    
unless $broken {
    say "Neuztraucies!";
    say "Esi laimīgs!";
}
```

Salīdziniet divas vienas programmas versijas:

Ar `if` un noliegumu:

```raku
if !$broken { . . . }
```

Ar `unless`:

```raku
unless $broken { . . . }
```

Jums ir abas iespējas, tāpēc katrā situācijā jūs vienmēr varat izvēlēties to, kas šķiet labāk.

Ņemiet vērā, ka pēc `unless` nevar likt `else` vai `elsif` bloku. Ja tāds ir vajadzīgs, vienīgais veids ir izmantot `if`.

{% include nav.html %}
