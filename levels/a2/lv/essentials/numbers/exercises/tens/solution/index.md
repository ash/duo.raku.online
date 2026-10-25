---
title: 'Risinājums: Desmitdaļu skaits'
---

{% include menu.html %}

Šādi jūs varat atrisināt uzdevumu.

## Kods

```raku
my $n = prompt 'Ievadiet pozitīvu veselu skaitli: ';

say ($n % 100) div 10;
```

🦋 Pilnu kodu varat atrast failā [tens.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/tens.raku).

## Izvade

Palaidiet programmu. Pārbaudiet to ar dažiem dažādiem gadījumiem:

* Apaļš skaitlis ar trim cipariem, piemēram, 120;
* Skaitlis, kas dalās ar 100 bez atlikuma, piemēram, 400;
* Skaitlis, lielāks par 10, bet mazāks par 100;
* Skaitlis, mazāks par 10.

Skaitlim 234 programma izdrukā šo:

```console
$ raku exercises/numbers/tens.raku
Ievadiet pozitīvu veselu skaitli: 234
3
```

## Komentāri

Šis risinājums atkal izmanto divus operatorus kopā: modulo `%` un veselo dalījumu `div`.

Apskatiet atstarpi pirms atverošās iekavas. Tai tur jābūt. Bez tās jūs saņemat sintakses kļūdu. Mēs atgriezīsimies pie [šīs Raku īpatnības](/lv/essentials/more-on-functions/mind-the-space) sadaļā par funkcijām. Pagaidām ierakstiet kodu tā, kā redzat augstāk. Vai arī pievienojiet vēl vienu iekavu pāri. Ielieciet tās ap funkcijas argumentu. Tad atstarpe nav vajadzīga:

```raku
    say(($n % 100) div 10);
```

{% include nav.html %}
