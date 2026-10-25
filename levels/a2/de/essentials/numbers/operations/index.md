---
title: Operationen mit Zahlen
---

{% include menu.html %}

Wir sind sicher: Sie kennen schon einige Operationen mit Zahlen in Raku. Hier sind zwei Wörter zum Merken. Das Symbol einer _Operation_ heißt _Operator_. Eine Operation arbeitet mit einigen Objekten. Diese Objekte heißen _Operanden_.

## Arithmetik

**Operator** | **Operation**
`+` | Addition
`-` | Subtraktion
`*` | Multiplikation
`/` | Division

Raku [unterstützt Unicode](/de/essentials/on-unicode) sehr gut. Deshalb haben einige dieser Operatoren eine zweite Form mit Nicht-ASCII-Zeichen:

`×` | Multiplikation
`÷` | Division

Mit Klammern ändern Sie die Reihenfolge der Operationen:

```raku
say 3 * 4 + 5;   # 17
say 3 * (4 + 5); # 27
```

## Modulo

Der Modulo-Operator ist `%`. Das ist in vielen anderen Sprachen genauso.

`%` | Modulo

Er gibt den Rest der ganzzahligen Division von zwei Zahlen zurück. Der Rest ist das, was nach der Division übrig bleibt. Also ist `10 % 3` gleich `1`. Aber beachten Sie: `-10 % 3` ist `2`. Hier ist der Grund. Teilen Sie die erste Zahl durch die zweite Zahl. Runden Sie das Ergebnis ab. Multiplizieren Sie es mit der zweiten Zahl. Ziehen Sie das dann von der ersten Zahl ab. Das ist das Ergebnis von `%`. Also ist `$a % $b` dasselbe wie `$a - $b * floor($a / $b)`.

## Teilbarkeit

Raku hat auch einen nützlichen Operator für die Teilbarkeit. Er prüft, ob eine Zahl durch eine andere teilbar ist. Das bedeutet, dass kein Rest bleibt.

`%%` | Teilbarkeit

Das ist ein Infix-Operator. Er steht zwischen seinen zwei Operanden: `10 %% 3`. Ist der erste Operand durch den zweiten teilbar? Dann ist das Ergebnis der Boolesche Wert `True`. Wenn nicht, ist das Ergebnis `False`.

## Ganzzahloperationen

Einige besondere Operationen haben ganze Zahlen als Ergebnis. Ihre Operatoren sind Wörter, keine Symbole.

`div` | Ganzzahldivision
`mod` | Ganzzahlmodulo

Der `div`-Operator rundet das Ergebnis ab. Also ist `10 div 3` gleich `3`. Und `-10 div 3` ist `-4`.

`div` und `mod` brauchen beide ganzzahlige Operanden. Sehen Sie sich die Zeilen mit `Error` im Programm unten an. Wenn Sie dort das `#` entfernen, funktioniert das Programm nicht:

```raku
say 10.3 % 3;     # OK
# say 10.3 mod 3; # Error

say 10.3 / 3.3;     # OK
# say 10.3 div 3.3; # Error
```

## Potenz

Es gibt zwei Wege, _x_ hoch _y_ zu berechnen. Der erste Weg ist der `**`-Operator:

```raku
say 3 ** 4; # 81
```

Der zweite Weg sind hochgestellte Ziffern. Das sind kleine Ziffern oben in der Zeile. Zum Beispiel:

```raku
say 3⁴; # 81
```

Sie können auch zwei oder mehr hochgestellte Ziffern verwenden. Dann kann die Potenz größer als 9 sein. Zum Beispiel:

```raku
say 2¹⁵; # 32768
```

Auch eine negative Potenz funktioniert:

```raku
say 2 ** (-2); ## 0.25
say 2⁻²; # 0.25
```

Beachten Sie: Die letzten beiden Ausdrücke ergeben eine `Rat`-Zahl.

## Operationen mit Zuweisung

Manchmal müssen Sie eine Variable mit einer Operation ändern. Alle Operationen haben dafür eine kurze Form. Hier ist ein Beispiel mit `+`.

Die vollständige Form

```raku
$a = $a + $b;
```

ist dasselbe wie:

```raku
$a += $b;
```

{% include nav.html %}
