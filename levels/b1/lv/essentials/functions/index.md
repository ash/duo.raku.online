---
title: Funkciju izveide un izsaukšana
---

{% include menu.html %}

Tagad jūs esat kursa pirmās daļas pēdējā sadaļā. Pēc tās jūs zināsiet pietiekami, lai uzrakstītu gandrīz _jebkuru_ programmu Raku valodā. Šīs sadaļas tēma ir _funkcijas_. Tās sauc arī par _apakšprogrammām_ vai vienkārši _rutīnām_.

Funkcija ir koda daļa ar nosaukumu, ko jūs varat izmantot daudzas reizes. Jūs varat _izsaukt_ funkciju no dažādām vietām programmā.

## Funkcijas izveide

Lai izveidotu funkciju, uzrakstiet atslēgvārdu `sub` un pēc tam funkcijas nosaukumu. Funkcijas ķermenis atrodas figūriekavu pārī.

```raku
sub greet {
    say 'Hello, World!';
}
```

## Funkcijas izmantošana

Lai izmantotu funkciju, vienkārši uzrakstiet tās nosaukumu tur, kur gribat to izsaukt. Raku valodā funkcijas definīcija var būt pirms izsaukuma vai pēc tā.

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

Tagad mēs apskatīsim vairāk detaļu par to, kā izveidot un izmantot funkcijas.

{% include nav.html %}
