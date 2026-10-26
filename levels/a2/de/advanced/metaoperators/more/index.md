---
title: Kreuz-, Hyper- und negierte Operatoren
translations_gpt:
---

{% include menu.html %}

Raku hat noch mehr Meta-Operatoren, nicht nur Reduktion und Zip. Hier lernen Sie drei davon kennen.

## Kreuz — `X`

Der Kreuz-Meta-Operator `X` nimmt zwei Listen und bildet Paare. Dabei kommt **jedes** Element der einen Liste mit **jedem** Element der anderen zusammen. Das nennt man das kartesische Produkt:

```raku
say <a b> X <1 2>; # ((a 1) (a 2) (b 1) (b 2))
```

Wie Zip kann auch `X` einen Operator nehmen. Dann arbeitet der Operator mit jedem Paar. `X~` verbindet jedes Paar zu einer Zeichenkette. `X*` multipliziert die zwei Zahlen:

```raku
say <a b> X~ <1 2>;         # (a1 a2 b1 b2)
say (1, 2, 3) X* (10, 100); # (10 100 20 200 30 300)
```

Zip geht zwei Listen nebeneinander durch. Kreuz verbindet sie auf alle möglichen Arten.

## Hyper — `»…«`

Ein Hyper-Meta-Operator benutzt einen Operator für **jedes Element** einer Liste. Der Operator steht zwischen den Pfeilen `»…«`. Mit reinen ASCII-Zeichen schreiben Sie `>>…<<`. Mit zwei Listen arbeitet er Element für Element, wie Zip. Manchmal hat eine Seite nur einen Wert. Dann benutzt er diesen Wert mit jedem Element der Liste:

```raku
say (1, 2, 3) »+» (10, 20, 30); # (11 22 33)
say (1, 2, 3) »*» 2;            # (2 4 6)
```

Die zwei Pfeile können in verschiedene Richtungen zeigen. Die Richtung ist wichtig, wenn die Listen verschieden lang sind. Wenn ein Pfeil **auf** eine Liste zeigt, kann Raku diese Liste wiederholen. Dann ist sie so lang wie die andere Liste. Hier sind die vier Kombinationen in ASCII, mit `<<` und `>>`:

* `>>op<<` — Raku wiederholt keine Liste. Die Listen müssen gleich lang sein. Sonst bekommen Sie einen Fehler.
* `>>op>>` — Raku wiederholt die **rechte** Liste. Dann ist sie so lang wie die linke.
* `<<op<<` — Raku wiederholt die **linke** Liste. Dann ist sie so lang wie die rechte.
* `<<op>>` — Raku wiederholt die **kürzere** Liste. Dann ist sie so lang wie die längere.

```raku
say (1, 2, 3, 4) <<+>> (10, 20); # (11 22 13 24)  — 10, 20 repeats to 10, 20, 10, 20
```

Es gibt auch eine Form mit nur einem Operanden. Sie ruft für jedes Element eine Methode auf. `>>.uc` schreibt jede Zeichenkette in Großbuchstaben:

```raku
say <raku perl>>>.uc; # (RAKU PERL)
```

Eine Hyper-Operation sagt Raku auch noch etwas. Raku *darf* die Arbeit parallel machen. Dann laufen mehrere Teile der Arbeit gleichzeitig. Später lernen Sie die ähnliche Methode `.hyper` kennen. Sie steht im [Abschnitt über nebenläufige Programmierung](/de/paradigms/hyper-race).

## Negiert — `!`

Setzen Sie `!` vor einen Vergleichsoperator. Dann bekommen Sie das umgekehrte Ergebnis. Sie kennen schon `!=`, also „ungleich“. Das ist einfach dieser Meta-Operator mit `==`. Auch andere Operatoren geben `True` oder `False`, wie `eq` und `%%`. Der Meta-Operator funktioniert mit ihnen genauso:

```raku
say 3 != 4;      # True
say 'a' !eq 'b'; # True  — nicht gleich als Zeichenketten
say 5 !%% 2;     # True  — 5 ist nicht teilbar durch 2
```

Also ist `$a !op $b` nur eine sauberere Art, `!($a op $b)` zu schreiben.

Raku macht das mit Absicht. Manche Sprachen sind mit Absicht klein und einfach, wie Esperanto. Esperanto will für jede Sache eine regelmäßige Form haben. Raku ist anders. Raku gibt Ihnen gern mehrere Wege. Also hat Raku das negierte `!eq`. Raku hat auch einen eigenen Operator `ne`. Die beiden bedeuten genau dasselbe:

```raku
say 'a' ne 'b'; # True — derselbe Test wie 'a' !eq 'b'
```

{% include nav.html %}
