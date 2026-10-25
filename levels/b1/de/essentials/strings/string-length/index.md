---
title: Zeichenkettenlänge
---

{% include menu.html %}

Weil Zeichenketten in Raku Unicode sind, werden manche einfachen Dinge etwas schwieriger. Oder Sie müssen zumindest genauer über sie nachdenken. Nehmen Sie zum Beispiel die Länge einer Zeichenkette. Ist das die Anzahl der Zeichen oder die Anzahl der Bytes? Und was, wenn dasselbe Zeichen in verschiedenen Zeichenketten aus verschiedenen Teilen besteht? Ist es dann immer noch ein Zeichen?

## Länge in Zeichen

Um herauszufinden, wie viele Zeichen eine Zeichenkette hat, verwenden Sie die _Methode_ `chars`:

```raku
my $str = '你好世界';
say $str.chars;
```

Über Methoden sprechen wir später, aber wir sollten sie schon jetzt verwenden können. In Raku können Sie Methoden auf fast jedem Objekt aufrufen, auch auf Zeichenketten und skalaren Variablen. Um eine Methode aufzurufen, verwenden Sie einen Punkt. Hier rufen wir also die Methode auf einer Variablen auf, die eine Zeichenkette speichert: `$str.chars`.

Der chinesische Gruß 你好世界 hat vier Zeichen. Und `$str.chars` gibt genau `4` zurück.

## Länge in Bytes

Nur zur Information: So finden Sie die Länge einer Zeichenkette in Bytes. In diesem Fall müssen Sie wissen, welche Kodierung für die Zeichenkette verwendet wird:

```raku
my $str = '你好世界';
say $str.encode('UTF-8').bytes;
```

Dieses Mal gibt das Programm `12` aus. Beachten Sie, dass die zweite Zeile zwei Methodenaufrufe in einer Kette hat.

## Länge in Codepunkten

Damit das Bild vollständig ist, hier noch eine nützliche Methode zur Länge von Zeichenketten: `codes`. Sie gibt die Anzahl der Codepunkte in der Zeichenkette zurück, nachdem die Zeichenkette normalisiert wurde. In vielen Fällen geben `codes` und `chars` dieselbe Zahl zurück. Aber in einigen seltenen Fällen geben die beiden Methoden verschiedene Ergebnisse. Zum Beispiel können Sie ‚ein unmögliches‘ Zeichen bauen. Im ganzen Unicode-Raum gibt es dafür keinen einzelnen Codepunkt.

```raku
say 'x̨'.chars;
say 'x̨'.codes;
```

Dieses Zeichen, `x̨`, hat keinen eigenen Codepunkt. Man kann es nur aus zwei Teilen bauen. Das sind der Kleinbuchstabe `x` und das kombinierende Zeichen `0x0328`. Es bleibt also ein Zeichen, aber es sind zwei Codepunkte. Deshalb gibt das Programm Folgendes aus:

    1
    2

{% include nav.html %}
