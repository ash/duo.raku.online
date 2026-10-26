---
title: Reduktions-Metaoperatoren
translations_gpt:
---

{% include menu.html %}

Ein Reduktions-Meta-Operator ist ein gewöhnlicher Operator in eckigen Klammern, wie `[+]` oder `[*]`. Er nimmt eine Liste von Werten und setzt den Operator zwischen je zwei davon. Auf diese Weise reduziert er die ganze Liste auf einen einzigen Wert.

Zum Beispiel addiert `[+]` alle Elemente einer Liste:

```raku
my @data = 3, 5, 7, 9, 11;
say [+] @data; # 35
```

Der Code `[+] @data` ist dasselbe, als würden Sie den Operator von Hand ausschreiben:

```raku
say 3 + 5 + 7 + 9 + 11; # 35
```

Jeder passende Infix-Operator funktioniert genauso. Mit `[*]` bekommen Sie das Produkt der Liste. Also können Sie ihn auf den Bereich `1..$n` anwenden und so leicht eine Fakultät berechnen:

```raku
my $n = 5;
say [*] 1..$n; # 120
```

Hier liefert der Bereich `1..$n` die Zahlen von 1 bis 5, und `[*]` multipliziert sie: `1 * 2 * 3 * 4 * 5`. Das Ergebnis ist _5!_.

Das funktioniert auch zum Verbinden von Zeichenketten. Die Reduktion `[~]` verbindet eine Liste von Zeichenketten zu einer einzigen:

```raku
my @strings = <neun hundert fünf und zwanzig>;
say [~] @strings; # neunhundertfünfundzwanzig
```

Sie können sogar Vergleichsoperatoren reduzieren. `[<]` sagt Ihnen, ob jeder Wert größer ist als der vorherige:

```raku
say [<] 1, 2, 3; # True
```

## Dreieckige Reduktion

Wenn Sie einen Backslash in die Klammern setzen, bekommen Sie eine _dreieckige_ Reduktion. Sie behält alle Zwischenergebnisse, nicht nur das letzte:

```raku
say [\+] 1..5; # (1 3 6 10 15)
```

Jedes Element des Ergebnisses ist eine Teilsumme: `1`, dann `1+2`, dann `1+2+3` und so weiter. Das letzte ist die Summe der ganzen Liste.

{% include nav.html %}
