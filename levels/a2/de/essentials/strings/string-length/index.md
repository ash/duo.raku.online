---
title: Zeichenkettenlänge
---

{% include menu.html %}

Zeichenketten in Raku sind Unicode-Zeichenketten. Deshalb sind manche einfachen Dinge etwas schwieriger. Oder Sie müssen zumindest mehr über sie nachdenken. Nehmen Sie zum Beispiel die Länge einer Zeichenkette. Ist das die Anzahl der Zeichen? Oder ist das die Anzahl der Bytes? Und manchmal hat dasselbe Zeichen in verschiedenen Zeichenketten verschiedene Teile. Ist es dann immer noch ein Zeichen?

## Länge in Zeichen

Die _Methode_ `chars` gibt die Länge einer Zeichenkette in Zeichen zurück:

```raku
my $str = '你好世界';
say $str.chars;
```

Über Methoden sprechen wir später. Aber wir können sie schon jetzt verwenden. In Raku können Sie Methoden auf fast jedem Objekt aufrufen. Auch Zeichenketten und skalare Variablen sind Objekte. Um eine Methode aufzurufen, schreiben Sie einen Punkt. Hier speichert die Variable eine Zeichenkette. Wir rufen die Methode auf dieser Variablen auf: `$str.chars`.

Dieser chinesische Gruß hat vier Zeichen: 你好世界. Und `$str.chars` gibt genau `4` zurück.

## Länge in Bytes

Das ist nur zu Ihrer Information. So bekommen Sie die Länge einer Zeichenkette in Bytes. Dafür müssen Sie die Kodierung der Zeichenkette kennen:

```raku
my $str = '你好世界';
say $str.encode('UTF-8').bytes;
```

Dieses Mal gibt das Programm `12` aus. Sehen Sie sich die zweite Zeile an. Sie hat zwei Methodenaufrufe, einen nach dem anderen.

## Länge in Codepunkten

Zum Abschluss dieses Themas noch eine nützliche Methode für die Länge von Zeichenketten: `codes`. Sie gibt die Anzahl der Codepunkte in der Zeichenkette zurück. Ein Codepunkt ist die Nummer eines Zeichens in Unicode. Vor dem Zählen normalisiert Raku die Zeichenkette. Raku bringt die Zeichenkette in eine Standardform. Oft geben `codes` und `chars` dasselbe Ergebnis. Aber in einigen seltenen Fällen geben die beiden Methoden verschiedene Ergebnisse. Zum Beispiel können Sie ‚ein unmögliches‘ Zeichen bauen. Im ganzen Unicode-Raum gibt es keinen einzelnen Codepunkt dafür.

```raku
say 'x̨'.chars;
say 'x̨'.codes;
```

Das Zeichen `x̨` hat keinen eigenen Codepunkt. Sie können es nur aus zwei Teilen bauen. Der erste Teil ist der Kleinbuchstabe `x`. Der zweite Teil ist das kombinierende Zeichen `0x0328`. Es fügt dem Buchstaben eine Markierung hinzu. Es ist also ein Zeichen, aber es hat zwei Codepunkte. Deshalb gibt das Programm das hier aus:

    1
    2

{% include nav.html %}
