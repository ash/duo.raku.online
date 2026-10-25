---
title: 'Solutio: Tabula emptio'
---

{% include menu.html %}

## Codex

Hic est una solutio possibilis:

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

Omnes numeri directe in codice scripti et in variis variabilibus servati sunt. Etiam operatore multiplicationis `*` utimur ut eventum computemus. Plura de operatoribus in proximis sectionibus cursus discemus. Sed iam nunc codex ut `$sella-pretium * $sellae` nullas quaestiones movere debet.

Tres lineae codicis tres lineas tabulae imprimunt, una cum capite. Nota quomodo characteres tabulationis `\t` columnas separant. In lineis datorum etiam signum dollari effugitum videre potes: `\$`. Sunt etiam variae variabiles quas interpolare volumus.

🦋 Codicem fontis invenire potes in archivo [purchase-table.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/purchase-table.raku).

## Exitus

Curre programmatum et vide quomodo tabulam imprimit:

```
$ raku exercises/strings/purchase-table.raku
Item    Pretium   N      Totalis
Sellae  $20.57    4      $82.28
Mensae  $50.18    1      $50.18
```

## Commentarii

Animadvertistine hyphena in nominibus variabilium ut `$sella-pretium` vel `$mensae-totalis`? In Raku hic est modus prorsus usitatus variabiles nominandi.

Noli turbari duobus signis dollari iuxta se positis. Raku ea separatim legit. Exempli gratia, in `\$$pretium` primum signum dollari effugitum est, itaque se ipsum significat. Secundum est pars nominis variabilis `$pretium`.

Omnes chordas in quotationibus duplicibus ponimus. Hoc interpolationem variabilium et characterum specialium permittit.

Ad hoc munus redibimus cum de arrayis et hashis sciemus.

{% include nav.html %}
