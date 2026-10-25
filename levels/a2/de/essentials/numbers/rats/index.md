---
title: Rationale Zahlen
---

{% include menu.html %}

Rationale Zahlen sind eine Besonderheit von Raku. Ihr Datentyp ist `Rat`.

In Raku ist eine rationale Zahl intern ein Bruch. Er hat zwei ganzzahlige Teile. Der Zähler steht oben, und der Nenner steht unten. So können Sie Zahlen wie 1/3 leicht speichern. Diese Zahlen bleiben genau.

Es gibt einige Arten, eine `Rat`-Zahl in Raku zu schreiben:

```raku
my $x = 1/2;
my $y = <2/3>;
```

Beachten Sie: Der Schrägstrich gehört hier zur Schreibweise der Zahl. Er ist kein Divisionsoperator. Also bedeutet `1/2` nicht ‚teile 1 durch 2‘. Aber Raku gibt rationale Zahlen als Dezimalzahlen oder ganze Zahlen aus:

```raku
say 1/2; # 0.5
say 3/4; # 0.75
```

Der Text nach dem `#`-Symbol ist ein Kommentar. Der Compiler ignoriert ihn. Im Kurs zeigen diese Kommentare die Ausgabe des Programms.

## Dezimalform

Das ist wichtig zu wissen. Sie können eine Zahl in Dezimalform schreiben, zum Beispiel `0.5`. Dann macht Raku eine `Rat`-Zahl. Sie ist keine ganze Zahl. Aber sie ist auch keine Gleitkommazahl. Andere Sprachen nennen solche Zahlen `float` oder `double`. Sie ist immer noch eine rationale Zahl!

Sehen Sie sich dieses Beispiel an:

```raku
say 0.1 + 0.2 - 0.3;
```

Eine Programmiersprache kann diese Rechnungen mit Gleitkommazahlen machen. Dann ist das Ergebnis nicht 0. Die Website [0.30000000000000004.com](https://0.30000000000000004.com) hat eine vollständige Liste solcher Beispiele. Dort gibt das Rechnen mit Gleitkommazahlen nicht das erwartete Ergebnis.

Aber Raku gibt genau `0` aus. Warum? Raku sieht `0.1`, `0.2` und `0.3` als rationale Zahlen. Intern speichert Raku sie als `1/10`, `2/10` und `3/10`. Führen Sie den Code in der Kommandozeile aus und prüfen Sie das:

```console
$ raku -e 'say 0.1 + 0.2 - 0.3'
0
```

## Unicode-Formen

Sie können auch Unicode-Zeichen für Brüche verwenden, wie `½`, `¼` oder `¾`. Vielleicht sind sie auf der Tastatur nicht immer leicht zu tippen. Aber sie sind genau dieselben Werte wie ihre ASCII-Versionen. Eine ASCII-Version kann ein Bruch oder eine Dezimalzahl sein:

`½` | `1/2` | `<1/2>` | `0.5`
`¼` | `1/4` | `<1/4>` | `0.25`
`¾` | `3/4` | `<3/4>` | `0.75`

Einige Brüche, wie `1/3`, haben weniger Formen: nur `⅓` oder `<1/3>`. Eine Dezimalform funktioniert bei ihnen nicht. Sie braucht unendlich viele Ziffern.

{% include nav.html %}
