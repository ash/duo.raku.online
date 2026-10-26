---
title: sink un quietly
translations_gpt:
---

{% include menu.html %}

Ir vēl divi prefiksi. Tie izpilda kodu tā darbības dēļ. Koda vērtība nav svarīga.

Prefikss `sink` izpilda kodu _iesūkšanas kontekstā_. Kods izpildās tikai savu blakusefektu dēļ. Raku izmet rezultātu. Tas noder ar slinku darbību. Ar `sink` jūs liekat tai izpildīties:

```raku
sink (1..3).map({ print "$_ " });
print "\n"; # 1 2 3
```

Šeit mēs izpildām `map` tikai tā drukāšanas dēļ. `sink` gādā, ka tas tiešām izpildās. Tad `sink` izmet sarakstu, ko devis `map`. Ja nekas to nepiespiež, slinks `map` var nemaz neizpildīties. Tā var notikt, kad neviens neizmanto tā rezultātu.

Prefikss `quietly` izpilda bloku un **paslēpj tā brīdinājumus**. Kāds kods parasti izdrukā brīdinājumu kļūdu plūsmā. `quietly` iekšā šis kods ir kluss:

```raku
my $value;
quietly {
    say $value + 1; # 1, with no "uninitialized value" warning
}
```

Parasti Raku parāda brīdinājumu, kad jūs pieskaitāt `1` nedefinētam `$value`. Brīdinājums ir par “neinicializētu vērtību”. `quietly` iekšā šis brīdinājums ir paslēpts. Dažreiz jūs zināt, ka jūsu kods dod brīdinājumu. Jūs negribat šo troksni. Tad izmantojiet `quietly`. Bet neizmantojiet to bieži. Brīdinājums parasti parāda īstu kļūdu.

{% include nav.html %}
