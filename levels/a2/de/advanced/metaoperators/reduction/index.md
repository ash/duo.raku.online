---
title: Reduktions-Metaoperatoren
translations_gpt:
---

{% include menu.html %}

Einen Reduktions-Meta-Operator schreiben Sie als normalen Operator in eckigen Klammern. Beispiele sind `[+]` und `[*]`. Er nimmt eine Liste von Werten. Er setzt den Operator zwischen je zwei Werte. So wird die ganze Liste zu einem einzigen Wert.

Zum Beispiel addiert `[+]` alle Elemente einer Liste:

```raku
my @data = 3, 5, 7, 9, 11;
say [+] @data; # 35
```

`[+] @data` ist dasselbe, als ob Sie alle Operatoren selbst schreiben:

```raku
say 3 + 5 + 7 + 9 + 11; # 35
```

Auch andere Infix-Operatoren können so arbeiten. Mit `[*]` bekommen Sie das Produkt der Liste. Verwenden Sie ihn mit dem Bereich `1..$n`. Das ist ein einfacher Weg, eine Fakultät zu berechnen:

```raku
my $n = 5;
say [*] 1..$n; # 120
```

Hier liefert der Bereich `1..$n` die Zahlen von 1 bis 5. Dann multipliziert `[*]` sie: `1 * 2 * 3 * 4 * 5`. Das ist _5!_.

Das geht auch mit Zeichenketten. Die Reduktion `[~]` verbindet eine Liste von Zeichenketten zu einer Zeichenkette:

```raku
my @strings = <neun hundert fünf und zwanzig>;
say [~] @strings; # neunhundertfünfundzwanzig
```

Sie können sogar Vergleichsoperatoren reduzieren. `[<]` sagt Ihnen, ob jeder Wert größer ist als der Wert davor:

```raku
say [<] 1, 2, 3; # True
```

## Dreieckige Reduktion

Setzen Sie einen Backslash in die Klammern. Dann bekommen Sie eine _dreieckige_ Reduktion. Sie behält das Ergebnis von jedem Schritt, nicht nur das letzte Ergebnis:

```raku
say [\+] 1..5; # (1 3 6 10 15)
```

Jedes Element im Ergebnis ist die Summe der ersten paar Zahlen: `1`, dann `1+2`, dann `1+2+3` und so weiter. Das letzte Element ist die Summe der ganzen Liste.

{% include nav.html %}
