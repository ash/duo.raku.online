---
title: Diapazonu, tipu un nosacījumu salīdzināšana
translations_gpt:
---

{% include menu.html %}

`when` bloks dara vairāk nekā tikai pārbauda, vai divas vērtības ir vienādas. Tas veic _gudro salīdzināšanu_ (smart match). Tas salīdzina tēmu ar vērtību, ko jūs norādāt. Tāpēc jūs varat salīdzināt ar diapazoniem, tipiem un nosacījumiem. Var izmantot ne tikai atsevišķas vērtības.

## Diapazoni

Diapazons atbilst, kad tēma ir tā iekšā. Tāpēc `given`/`when` ir labs, lai sadalītu skaitļus grupās:

```raku
my $score = 75;

given $score {
    when 90..100 { say 'A' }
    when 80..89  { say 'B' }
    when 70..79  { say 'C' }
    default      { say 'F' }
}
```

Vērtība `75` ir diapazonā `70..79`. Tāpēc programma izdrukā:

```
C
```

## Tipi

Tips atbilst, kad tēmai ir šis tips. Tāpēc jūs varat izvēlēties, ko darīt, pēc vērtības veida:

```raku
my $value = 'Raku';

given $value {
    when Int { say 'an integer' }
    when Str { say 'a string' }
}
```

`$value` ir virkne. Tāpēc programma izdrukā:

```
a string
```

## Nosacījumi

Jūs varat arī tieši uzrakstīt salīdzinājumu. `when` iekšā tēma ir `$_`. Tāpēc nosacījums, piemēram, `$_ < 0`, atbilst, kad tas ir patiess:

```raku
my $n = -7;

given $n {
    when $_ < 0 { say 'negative' }
    when 0      { say 'zero' }
    default     { say 'positive' }
}
```

Šeit atbilst pirmais `when`. Programma izdrukā:

```
negative
```

{% include nav.html %}
