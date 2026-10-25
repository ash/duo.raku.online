---
title: Operationen mit Zahlen
---

{% include menu.html %}

Sie kennen sicher schon einige der Operationen mit Zahlen in Raku. Wir erwähnen nur kurz, dass das Symbol einer _Operation_ _Operator_ heißt. Die Objekte, mit denen eine Operation arbeitet, heißen _Operanden_.

## Arithmetik

**Operator** | **Operation**
`+` | Addition
`-` | Subtraktion
`*` | Multiplikation
`/` | Division

Weil Raku [Unicode wirklich gut unterstützt](/de/essentials/on-unicode), haben einige dieser Operatoren auch Nicht-ASCII-Versionen:

`×` | Multiplikation
`÷` | Division

Um die Reihenfolge zu ändern, in der die Operationen ausgeführt werden, verwenden Sie Klammern:

```raku
say 3 * 4 + 5;   # 17
say 3 * (4 + 5); # 27
```

## Modulo

Wie in vielen anderen Sprachen ist der Modulo-Operator `%`.

`%` | Modulo

Er gibt den Rest der ganzzahligen Division von zwei Zahlen zurück, also ist `10 % 3` gleich `1`. Beachten Sie, dass `-10 % 3` gleich `2` ist, weil die Operation so definiert ist. Das Ergebnis der Division wird abgerundet und mit der zweiten Zahl multipliziert. Dann wird dieser Wert von der ersten Zahl abgezogen. Also bedeutet `$a % $b` dasselbe wie `$a - $b * floor($a / $b)`.

## Teilbarkeit

Raku hat noch einen nützlichen Operator. Er prüft, ob eine Zahl durch eine andere teilbar ist.

`%%` | Teilbarkeit

Das ist ein Infix-Operator: Er steht zwischen seinen zwei Operanden, wie in `10 %% 3`. Wenn der erste Operand durch den zweiten teilbar ist, bekommen Sie ein boolesches `True`. Sonst bekommen Sie `False`.

## Ganzzahloperationen

Einige spezielle Operationen geben ganze Zahlen als Ergebnis zurück. Ihre Operatoren sind Wörter statt Symbole.

`div` | Ganzzahldivision
`mod` | Ganzzahlmodulo

Der `div`-Operator rundet das Ergebnis ab. Also ist `10 div 3` gleich `3`, und `-10 div 3` ist `-4`.

Sowohl `div` als auch `mod` erwarten ganzzahlige Operanden. Das Programm unten funktioniert also nicht, wenn Sie bei den Zeilen mit `Error` das Kommentarzeichen entfernen:

```raku
say 10.3 % 3;     # OK
# say 10.3 mod 3; # Error

say 10.3 / 3.3;     # OK
# say 10.3 div 3.3; # Error
```

## Potenz

Sie können _x_ hoch _y_ auf zwei Arten berechnen. Erstens können Sie den `**`-Operator verwenden:

```raku
say 3 ** 4; # 81
```

Zweitens können Sie hochgestellte Ziffern verwenden, also kleine, erhöhte Ziffern. Zum Beispiel:

```raku
say 3⁴; # 81
```

Sie können mehr als eine hochgestellte Ziffer verwenden, um eine Potenz größer als 9 zu bekommen. Zum Beispiel:

```raku
say 2¹⁵; # 32768
```

Auch negative Potenzen sind kein Problem:

```raku
say 2 ** (-2); ## 0.25
say 2⁻²; # 0.25
```

Beachten Sie, dass das Ergebnis der letzten beiden Ausdrücke eine `Rat`-Zahl ist.

## Operationen mit Zuweisung

Wenn Sie eine Variable aktualisieren müssen, haben alle Operationen eine Kurzform. Wir zeigen das am Beispiel von `+`.

Die vollständige Form

```raku
$a = $a + $b;
```

bedeutet dasselbe wie:

```raku
$a += $b;
```

{% include nav.html %}
