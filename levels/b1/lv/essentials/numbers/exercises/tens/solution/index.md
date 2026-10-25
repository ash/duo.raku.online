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

Palaidiet programmu un pārbaudiet dažus dažādus gadījumus:

* Apaļš trīsciparu skaitlis, piemēram, 120;
* Skaitlis, kas ir 100 daudzkārtnis, piemēram, 400;
* Skaitlis, kas ir lielāks par 10, bet mazāks par 100;
* Skaitlis, kas ir mazāks par 10.

Skaitlim 234 programmas izvade izskatās šādi:

```console
$ raku exercises/numbers/tens.raku
Ievadiet pozitīvu veselu skaitli: 234
3
```

## Komentāri

Šis risinājums atkal apvieno modulo `%` un veselo dalījumu `div`.

Pievērsiet uzmanību atstarpei pirms atverošās iekavas. Tai tur jābūt, citādi jūs saņemsiet sintakses kļūdu. Mēs atgriezīsimies pie [šīs Raku īpatnības](/lv/essentials/more-on-functions/mind-the-space) sadaļā par funkcijām. Pagaidām ierakstiet kodu tā, kā parādīts augstāk. Vai arī jūs varat ielikt vēl vienu iekavu pāri ap funkcijas argumentu. Šajā gadījumā atstarpe nav vajadzīga:

```raku
    say(($n % 100) div 10);
```

{% include nav.html %}
