---
title: Kreuz-, Hyper- und negierte Operatoren
translations_gpt:
---

{% include menu.html %}

Neben Reduktion und Zip hat Raku noch mehrere andere Meta-Operatoren. Drei davon sollte man an dieser Stelle kennen.

## Kreuz — `X`

Der Kreuz-Meta-Operator `X` nimmt zwei Listen. Er bildet aus **jedem** Element der einen Liste und **jedem** Element der anderen ein Paar. Das nennt man das kartesische Produkt:

```raku
say <a b> X <1 2>; # ((a 1) (a 2) (b 1) (b 2))
```

Wie Zip kann er einen Operator umhüllen, der dann mit jedem Paar arbeitet. `X~` verbindet jedes Paar zu einer Zeichenkette, und `X*` multipliziert die Werte:

```raku
say <a b> X~ <1 2>;         # (a1 a2 b1 b2)
say (1, 2, 3) X* (10, 100); # (10 100 20 200 30 300)
```

Zip geht zwei Listen nebeneinander durch, während Kreuz sie auf alle möglichen Arten kombiniert.

## Hyper — `»…«`

Ein Hyper-Meta-Operator wendet einen Operator auf **jedes Element** einer Liste an. Der Operator steht in den spitzen Klammern `»…«` oder in der ASCII-Form `>>…<<`. Mit zwei Listen arbeitet er Element für Element, wie Zip. Wenn auf einer Seite nur ein einzelner Wert steht, streckt er diesen Wert über die ganze Liste:

```raku
say (1, 2, 3) »+» (10, 20, 30); # (11 22 33)
say (1, 2, 3) »*» 2;            # (2 4 6)
```

Die zwei Pfeile müssen nicht in dieselbe Richtung zeigen. Ihre Richtung bestimmt, was passiert, wenn die Listen verschieden lang sind. Wenn ein Pfeil **auf** eine Liste zeigt, darf sich diese Liste wiederholen, bis sie zur anderen passt. Hier sind die vier Kombinationen, in ASCII mit `<<` und `>>` geschrieben:

* `>>op<<` — keine Liste wird wiederholt, also müssen die Listen schon gleich lang sein, sonst gibt es einen Fehler;
* `>>op>>` — die **rechte** Liste wiederholt sich, bis sie zur linken passt;
* `<<op<<` — die **linke** Liste wiederholt sich, bis sie zur rechten passt;
* `<<op>>` — die **kürzere** Liste wiederholt sich, bis sie zur längeren passt.

```raku
say (1, 2, 3, 4) <<+>> (10, 20); # (11 22 13 24)  — 10, 20 repeats to 10, 20, 10, 20
```

Es gibt auch eine unäre Form, mit nur einem Operanden. Sie ruft für jedes Element eine Methode auf. `>>.uc` wandelt jede Zeichenkette in Großbuchstaben um:

```raku
say <raku perl>>>.uc; # (RAKU PERL)
```

Hyper-Operationen zeigen auch, dass die Arbeit parallel laufen *darf*. Die verwandte Methode `.hyper` sehen Sie später im [Abschnitt über nebenläufige Programmierung](/de/paradigms/hyper-race).

## Negiert — `!`

Wenn Sie `!` vor einen Vergleichsoperator setzen, bekommen Sie das umgekehrte Ergebnis. Das bekannte `!=` (ungleich) ist genau dieser Meta-Operator mit `==`. Dasselbe funktioniert für andere boolesche Operatoren, wie `eq` und `%%`:

```raku
say 3 != 4;      # True
say 'a' !eq 'b'; # True  — nicht gleich als Zeichenketten
say 5 !%% 2;     # True  — 5 ist nicht teilbar durch 2
```

Kurz gesagt: `$a !op $b` ist nur eine schönere Schreibweise für `!($a op $b)`.

Das ist Absicht. Manche Sprachen, wie Esperanto, sind mit Absicht klein und einfach. Sie wollen für jede Sache genau eine regelmäßige Ausdrucksweise haben. Raku ist anders und gibt Ihnen gern mehrere Wege. Deshalb gibt es das negierte `!eq` direkt neben dem speziellen Operator `ne`. Die beiden bedeuten genau dasselbe:

```raku
say 'a' ne 'b'; # True — derselbe Test wie 'a' !eq 'b'
```

{% include nav.html %}
