---
title: Rationale Zahlen
---

{% include menu.html %}

Rationale Zahlen sind ein einzigartiges Merkmal von Raku. Sie haben einen eigenen Datentyp: `Rat`.

Intern ist eine rationale Zahl ein Bruch. Er hat zwei ganzzahlige Teile, den Zähler und den Nenner. Das bedeutet, dass man Zahlen wie 1/3 genau speichern kann.

Es gibt mehrere Möglichkeiten, eine `Rat`-Zahl in einem Raku-Programm zu schreiben:

```raku
my $x = 1/2;
my $y = <2/3>;
```

Beachten Sie, dass der Schrägstrich hier zur Schreibweise der Zahl gehört. Er ist kein Divisionsoperator. Also bedeutet `1/2` nicht, dass Sie 1 durch 2 teilen. Wenn Sie rationale Zahlen ausgeben, sehen sie aber wie Dezimalzahlen oder ganze Zahlen aus:

```raku
say 1/2; # 0.5
say 3/4; # 0.75
```

Alles nach dem `#`-Symbol in einer Zeile ist ein Kommentar, den der Compiler ignoriert. In diesem Kurs zeigen wir mit solchen Kommentaren, was das Programm ausgibt.

## Dezimalform

Es ist wichtig, das zu verstehen. Wenn Sie eine Zahl in Dezimalform schreiben, wie `0.5`, erstellt Raku eine `Rat`-Zahl. Sie ist keine ganze Zahl, und sie ist auch keine Gleitkommazahl. In anderen Sprachen heißen solche Zahlen `float` oder `double`. Sie ist immer noch eine rationale Zahl!

Sehen Sie sich das folgende Beispiel an:

```raku
say 0.1 + 0.2 - 0.3;
```

Wenn eine Sprache hier Gleitkommaarithmetik verwendet, ist das Ergebnis nicht 0. Die Website [0.30000000000000004.com](https://0.30000000000000004.com) hat eine vollständige Liste von Beispielen. Bei allen liefert die Gleitkommaarithmetik nicht das erwartete Ergebnis.

Aber Raku gibt genau `0` aus. Das liegt daran, dass Raku `0.1`, `0.2` und `0.3` als rationale Zahlen behandelt. Intern speichert Raku sie als `1/10`, `2/10` und `3/10`. Führen Sie den Code in der Kommandozeile aus, um das zu prüfen:

```console
$ raku -e 'say 0.1 + 0.2 - 0.3'
0
```

## Unicode-Formen

Sie können auch Unicode-Zeichen für Brüche verwenden, wie `½`, `¼` oder `¾`. Diese Zeichen sind wahrscheinlich nicht immer leicht auf der Tastatur zu tippen. Aber diese Brüche sind genau dieselben Werte wie ihre ASCII-Versionen. Die ASCII-Versionen können Sie als Bruch oder als Dezimalzahl schreiben:

`½` | `1/2` | `<1/2>` | `0.5`
`¼` | `1/4` | `<1/4>` | `0.25`
`¾` | `3/4` | `<3/4>` | `0.75`

Bei manchen Brüchen, wie `1/3`, haben Sie weniger Möglichkeiten: `⅓` oder `<1/3>`. Das liegt daran, dass die Dezimalform unendlich viele Ziffern brauchen würde.

{% include nav.html %}
