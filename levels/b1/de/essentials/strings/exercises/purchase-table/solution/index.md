---
title: 'Solution: Einkaufstabelle'
---

{% include menu.html %}

## Code

Hier ist eine mögliche Lösung:

```raku
my $chair-price = 20.57;
my $chairs = 4;
my $chairs-total = $chair-price * $chairs;

my $table-price = 50.18;
my $tables = 1;
my $tables-total = $table-price * $tables;

say "Artikel\tPreis\tN\tGesamt";
say "Stühle\t\$$chair-price\t$chairs\t\$$chairs-total";
say "Tische\t\$$table-price\t$tables\t\$$tables-total";
```

Alle Zahlen stehen direkt im Code und sind in mehreren Variablen gespeichert. Wir verwenden auch den Multiplikationsoperator `*`, um das Ergebnis zu berechnen. In den nächsten Abschnitten des Kurses lernen wir mehr über Operatoren. Aber schon jetzt sollten Sie bei Code wie `$chair-price * $chairs` keine Fragen haben.

Drei Codezeilen drucken die drei Zeilen der Tabelle, auch die Kopfzeile. Beachten Sie, wie Tabulatorzeichen `\t` die Spalten trennen. In den Datenzeilen sehen Sie auch ein maskiertes Dollarzeichen: `\$`. Außerdem gibt es verschiedene Variablen, die wir interpolieren wollen.

🦋 Sie können den Quellcode in der Datei [purchase-table.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/purchase-table.raku) finden.

## Ausgabe

Führen Sie das Programm aus und sehen Sie, wie es die Tabelle druckt:

```
$ raku exercises/strings/purchase-table.raku
Artikel Preis   N      Gesamt
Stühle  $20.57  4      $82.28
Tische  $50.18  1      $50.18
```

## Kommentare

Haben Sie die Bindestriche in Variablennamen wie `$chair-price` oder `$tables-total` bemerkt? In Raku ist das eine ganz normale Art, Variablen zu benennen.

Lassen Sie sich nicht von den zwei Dollarzeichen nebeneinander verwirren. Raku liest sie getrennt. Zum Beispiel ist in `\$$price` das erste Dollarzeichen maskiert, also steht es für sich selbst. Das zweite ist Teil des Variablennamens `$price`.

Wir setzen alle Zeichenketten in doppelte Anführungszeichen. Das ermöglicht die Interpolation der Variablen und Sonderzeichen.

Wir kommen zu dieser Aufgabe zurück, wenn wir Arrays und Hashes kennen.

{% include nav.html %}
