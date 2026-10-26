---
title: Überblick über Operatorverhalten
translations_gpt:
---

{% include menu.html %}

Ein Ausdruck kann mehrere Operatoren haben. Dann muss Raku die Reihenfolge festlegen. Welcher Operator kommt zuerst? Zwei Regeln entscheiden das: _Vorrang_ und _Assoziativität_.

## Vorrang

Der Vorrang entscheidet, welcher Operator stärker ist. Der stärkere Operator nimmt zuerst seine Operanden. Die Multiplikation hat einen höheren Vorrang als die Addition. Also kommt die Multiplikation zuerst:

```raku
say 2 + 3 * 4; # 14
```

Raku liest den Ausdruck als `2 + (3 * 4)`. Das Ergebnis ist `14`, nicht `20`. Sie können immer Klammern setzen. Damit bekommen Sie eine andere Reihenfolge:

```raku
say (2 + 3) * 4; # 20
```

## Assoziativität

Manche Operatoren haben den _gleichen_ Vorrang. Dann entscheidet die Assoziativität über die Reihenfolge. Die Subtraktion ist linksassoziativ. Also gruppiert Raku sie von links:

```raku
say 8 - 3 - 2; # 3
```

Das ist `(8 - 3) - 2`. Das Ergebnis ist `3`. Aber die Potenzierung, der Operator `**`, ist rechtsassoziativ:

```raku
say 2 ** 3 ** 2; # 512
```

Hier gruppiert Raku den Ausdruck als `2 ** (3 ** 2)`. Das ist `2 ** 9`, und das Ergebnis ist `512`.

## Verkettete Vergleiche

Sie können Vergleichsoperatoren _verketten_. Dann kommen sie direkt nacheinander. So ein Code ist leicht zu lesen. Er funktioniert wie in der Mathematik:

```raku
say 1 < 2 < 3; # True
say 1 < 5 < 3; # False
```

Raku vergleicht den mittleren Wert mit beiden Werten neben ihm. `1 < 2 < 3` ist wahr. Denn `1 < 2` ist wahr, und `2 < 3` ist auch wahr.

{% include nav.html %}
