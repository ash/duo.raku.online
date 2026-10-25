---
title: 'Risinājums: Pirkumu tabula'
---

{% include menu.html %}

## Kods

Lūk, viens veids, kā to atrisināt:

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

Visi skaitļi ir ierakstīti tieši kodā. Tos glabā vairāki mainīgie. Mēs izmantojam arī reizināšanas operatoru `*`, lai iegūtu rezultātu. Vairāk par operatoriem jūs uzzināsiet nākamajās kursa sadaļās. Bet jau tagad tādam kodam kā `$chair-price * $chairs` vajadzētu būt skaidram.

Trīs koda rindas veido izvadi. Tās izdrukā trīs tabulas rindas. Pirmā rinda ir galvene. Apskatiet kolonnas. Starp tām ir tabulācijas rakstzīmes `\t`. Datu rindās ir aizbēgta dolāra zīme: `\$`. Tajās ir arī dažādi mainīgie. Mēs gribam interpolēt šos mainīgos.

🦋 Jūs varat atrast pirmkodu failā [purchase-table.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/purchase-table.raku).

## Izvade

Palaidiet programmu. Tā izdrukā tabulu:

```
$ raku exercises/strings/purchase-table.raku
Item    Price   N      Total
Chairs  $20.57  4      $82.28
Tables  $50.18  1      $50.18
```

## Komentāri

Vai jūs redzējāt defises dažos mainīgo nosaukumos? Apskatiet `$chair-price` vai `$tables-total`. Raku valodā tādi nosaukumi ir pilnīgi pareizi.

Dažreiz divas dolāra zīmes stāv blakus. Neļaujiet tam jūs samulsināt. Raku tās lasa pa vienai. Apskatiet `\$$price`. Pirmā dolāra zīme ir aizbēgta. Tāpēc tā ir vienkārši dolāra zīme. Otrā ir daļa no mainīgā nosaukuma `$price`.

Visas virknes ir dubultajās pēdiņās. Tāpēc Raku var interpolēt mainīgos un speciālās rakstzīmes.

Pie šī uzdevuma mēs atgriezīsimies vēlāk. Vispirms mēs uzzināsim par masīviem un hešiem.

{% include nav.html %}
