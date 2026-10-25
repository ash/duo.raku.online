---
title: 'Solution: Einkaufstabelle'
---

{% include menu.html %}

## Code

Hier ist ein Weg, die Aufgabe zu lösen:

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

Alle Zahlen stehen direkt im Code. Mehrere Variablen speichern sie. Wir verwenden auch den Multiplikationsoperator `*`, um das Ergebnis zu bekommen. Mehr über Operatoren lernen Sie in den nächsten Abschnitten des Kurses. Aber schon jetzt sollte Code wie `$chair-price * $chairs` klar sein.

Drei Codezeilen erzeugen die Ausgabe. Sie drucken die drei Zeilen der Tabelle. Die erste Zeile ist die Kopfzeile. Sehen Sie sich die Spalten an. Tabulatorzeichen `\t` trennen sie. Die Datenzeilen haben ein maskiertes Dollarzeichen: `\$`. Sie haben auch verschiedene Variablen. Wir wollen diese Variablen interpolieren.

🦋 Sie können den Quellcode in der Datei [purchase-table.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/purchase-table.raku) finden.

## Ausgabe

Führen Sie das Programm aus. Es gibt die Tabelle aus:

```
$ raku exercises/strings/purchase-table.raku
Artikel Preis   N      Gesamt
Stühle  $20.57  4      $82.28
Tische  $50.18  1      $50.18
```

## Kommentare

Haben Sie die Bindestriche in einigen Variablennamen gesehen? Sehen Sie sich `$chair-price` oder `$tables-total` an. In Raku sind solche Namen völlig in Ordnung.

Manchmal stehen zwei Dollarzeichen nebeneinander. Lassen Sie sich davon nicht verwirren. Raku liest sie einzeln. Sehen Sie sich `\$$price` an. Das erste Dollarzeichen ist maskiert. Also ist es einfach ein Dollarzeichen. Das zweite ist Teil des Variablennamens `$price`.

Alle Zeichenketten stehen in doppelten Anführungszeichen. So kann Raku die Variablen und die Sonderzeichen interpolieren.

Wir kommen später zu dieser Aufgabe zurück. Zuerst lernen wir Arrays und Hashes kennen.

{% include nav.html %}
