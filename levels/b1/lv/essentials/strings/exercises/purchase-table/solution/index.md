---
title: 'Risinājums: Pirkumu tabula'
---

{% include menu.html %}

## Kods

Šeit ir viens iespējams risinājums:

```raku
my $chair-price = 20.57;
my $chairs = 4;
my $chairs-total = $chair-price * $chairs;

my $table-price = 50.18;
my $tables = 1;
my $tables-total = $table-price * $tables;

say "Item\tPrice\tN\tTotal";
say "Chairs\t\$$chair-price\t$chairs\t\$$chairs-total";
say "Tables\t\$$table-price\t$tables\t\$$tables-total";
```

Visi skaitļi ir ierakstīti tieši kodā un saglabāti vairākos mainīgajos. Mēs arī izmantojam reizināšanas operatoru `*`, lai aprēķinātu rezultātu. Vairāk par operatoriem mēs uzzināsim nākamajās kursa sadaļās. Bet jau tagad tādam kodam kā `$chair-price * $chairs` nevajadzētu radīt jautājumus.

Trīs koda rindas izdrukā trīs tabulas rindas, ieskaitot galveni. Ievērojiet, kā tabulācijas rakstzīmes `\t` atdala kolonnas. Datu rindās jūs varat redzēt arī aizbēgtu dolāra zīmi: `\$`. Tur ir arī dažādi mainīgie, kurus mēs gribam interpolēt.

🦋 Jūs varat atrast pirmkodu failā [purchase-table.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/purchase-table.raku).

## Izvade

Palaidiet programmu un redziet, kā tā izdrukā tabulu:

```
$ raku exercises/strings/purchase-table.raku
Item    Price   N      Total
Chairs  $20.57  4      $82.28
Tables  $50.18  1      $50.18
```

## Komentāri

Vai pamanījāt defises mainīgo nosaukumos, piemēram, `$chair-price` vai `$tables-total`? Raku valodā tas ir pilnīgi normāls veids, kā nosaukt mainīgos.

Lai jūs nemulsina divas dolāra zīmes blakus. Raku tās lasa atsevišķi. Piemēram, virknē `\$$price` pirmā dolāra zīme ir aizbēgta, tāpēc tā apzīmē pati sevi. Otrā ir daļa no mainīgā nosaukuma `$price`.

Visas virknes mēs ieliekam dubultajās pēdiņās. Tas ļauj interpolēt mainīgos un speciālās rakstzīmes.

Pie šī uzdevuma mēs atgriezīsimies, kad zināsim par masīviem un hešiem.

{% include nav.html %}
