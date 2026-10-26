---
title: Diapazonu, tipu un nosacījumu salīdzināšana
translations_gpt:
---

{% include menu.html %}

`when` bloks ne tikai pārbauda, vai divas vērtības ir vienādas. Tas veic _gudro salīdzināšanu_ (smart match) starp tēmu un vērtību, ko jūs tam norādāt. Tāpēc jūs varat salīdzināt ar diapazoniem, tipiem un nosacījumiem, ne tikai ar atsevišķām vērtībām.

## Diapazoni

Diapazons atbilst, ja tēma ir tajā iekšā. Tāpēc `given`/`when` ir dabiska izvēle, lai sadalītu skaitļus grupās:

```raku
my $score = 75;

given $score {
    when 90..100 { say 'A' }
    when 80..89  { say 'B' }
    when 70..79  { say 'C' }
    default      { say 'F' }
}
```

Vērtība `75` ir diapazonā `70..79`, tāpēc programma izdrukā:

```
C
```

## Tipi

Tips atbilst, ja tēma ir šī tipa. Tāpēc programma var izvēlēties atzaru pēc tā, kāda veida vērtība tai ir:

```raku
my $value = 'Raku';

given $value {
    when Int { say 'an integer' }
    when Str { say 'a string' }
}
```

`$value` satur virkni, tāpēc programma izdrukā:

```
a string
```

## Nosacījumi

Jūs varat arī tieši uzrakstīt salīdzinājumu. `when` iekšienē tēmu var izmantot kā `$_`. Tāpēc nosacījums, piemēram, `$_ < 0`, atbilst, ja tas ir patiess:

```raku
my $n = -7;

given $n {
    when $_ < 0 { say 'negative' }
    when 0      { say 'zero' }
    default     { say 'positive' }
}
```

Šeit pirmais `when` atbilst, un programma izdrukā:

```
negative
```

{% include nav.html %}
