---
title: 'Solutio: Tabula emptio'
---

{% include menu.html %}

## Codex

Hoc modo id solvere potes:

```raku
my $sella-pretium = 20.57;
my $sellae = 4;
my $sellae-totalis = $sella-pretium * $sellae;

my $mensa-pretium = 50.18;
my $mensae = 1;
my $mensae-totalis = $mensa-pretium * $mensae;

say "Item\tPretium\tN\tTotalis";
say "Sellae\t\$$sella-pretium\t$sellae\t\$$sellae-totalis";
say "Mensae\t\$$mensa-pretium\t$mensae\t\$$mensae-totalis";
```

Omnes numeri directe in codice scripti sunt. Variae variabiles eos tenent. Etiam operatore multiplicationis `*` eventum computamus. Plura de operatoribus in proximis sectionibus cursus disces. Sed iam nunc codex ut `$sella-pretium * $sellae` clarus esse debet.

Tres lineae codicis exitum faciunt. Eae tres lineas tabulae imprimunt. Prima linea est caput. Specta columnas. Characteres tabulationis `\t` eas separant. Lineae datorum signum dollari effugitum habent: `\$`. Etiam varias variabiles habent. Has variabiles interpolare volumus.

🦋 Codicem fontis invenire potes in archivo [purchase-table.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/purchase-table.raku).

## Exitus

Programma curre. Tabulam imprimit:

```
$ raku exercises/strings/purchase-table.raku
Item    Pretium   N      Totalis
Sellae  $20.57    4      $82.28
Mensae  $50.18    1      $50.18
```

## Commentarii

Vidistine hyphena in quibusdam nominibus variabilium? Specta `$sella-pretium` vel `$mensae-totalis`. In Raku talia nomina omnino bona sunt.

Interdum duo signa dollari iuxta se stant. Noli propter hoc turbari. Raku ea unum post alterum legit. Specta `\$$pretium`. Primum signum dollari effugitum est. Itaque solum signum dollari est. Secundum est pars nominis variabilis `$pretium`.

Omnes chordae in quotationibus duplicibus sunt. Itaque Raku variabiles et characteres speciales interpolare potest.

Postea ad hoc munus redimus. Primum de arrayis et hashis discimus.

{% include nav.html %}
