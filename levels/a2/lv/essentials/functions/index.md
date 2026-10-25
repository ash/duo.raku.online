---
title: Funkciju izveide un izsaukšana
---

{% include menu.html %}

Ar šo sadaļu beidzas kursa pirmā daļa. Pēc tās jūs varat uzrakstīt gandrīz _jebkuru_ programmu Raku valodā. Šī sadaļa ir par _funkcijām_. Funkcijām ir arī citi nosaukumi: _apakšprogrammas_ vai vienkārši _rutīnas_.

Funkcija ir koda daļa ar savu nosaukumu. Jūs varat to izmantot daudzas reizes. Lai izmantotu funkciju, jūs to _izsaucat_. Jūs varat to izsaukt no dažādām vietām programmā.

## Funkcijas izveide

Lai izveidotu funkciju, uzrakstiet atslēgvārdu `sub`. Pēc tā uzrakstiet funkcijas nosaukumu. Funkcijas ķermeni ielieciet figūriekavās.

```raku
sub greet {
    say 'Hello, World!';
}
```

## Funkcijas izmantošana

Lai izmantotu funkciju, vienkārši uzrakstiet tās nosaukumu. Rakstiet to tur, kur gribat izsaukt funkciju. Raku valodā jūs varat izveidot funkciju pirms šīs vietas. Jūs varat to izveidot arī pēc šīs vietas.

```raku
say 'Šis ir tas, ko parasti izdrukā pirmā programma:';
greet;    

sub greet {
    say 'Hello, World!';
}
```

Programma izdrukā abas ziņas:

```console
$ raku t.raku
Šis ir tas, ko parasti izdrukā pirmā programma:
Hello, World!
```

Tālāk apskatīsim vairāk par funkciju izveidi un izmantošanu.

{% include nav.html %}
