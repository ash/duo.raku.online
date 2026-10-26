---
title: Der Whatever-Stern
translations_gpt:
---

{% include menu.html %}

Vielleicht hast du `*` schon in Ausdrücken wie `* * 2` oder `* %% 2` gesehen. Sie kommen in Aufrufen von `map` und `grep` vor. Dieses `*` ist der _Whatever-Stern_. Der Ausdruck um ihn herum erzeugt direkt an dieser Stelle eine kleine Funktion mit einem Argument. Dieser Abschnitt erklärt, was der Stern wirklich ist und was er mit einem Block zu tun hat. Er zeigt auch, wo der Stern allein einfach „was auch immer du willst“ bedeutet.

## Ein Stern erzeugt eine Funktion

Wenn ein Ausdruck ein `*` enthält, macht Raku aus dem ganzen Ausdruck eine Funktion, einen `WhateverCode`. In dieser Funktion steht der Stern für das Argument:

```raku
my $double = * * 2;

say $double.^name; # WhateverCode
say $double(21);   # 42
```

`* * 2` ist eine Funktion, die ihr einziges Argument mit zwei multipliziert. Deshalb funktioniert `(1..5).map(* * 2)`. `map` bekommt genau so eine Funktion mit einem Argument.

## Whatever im Vergleich zu einem Block

Ein Whatever-Ausdruck ist eine kürzere Schreibweise für eine Funktion. Du könntest diese Funktion auch als Block schreiben. Diese drei sind gleich:

```raku
* * 2
{ $_ * 2 }
-> $x { $x * 2 }
```

Die Whatever-Form gibt keinem Parameter einen Namen. Die Block-Form benutzt die Topic-Variable `$_`, und die Pfeil-Form gibt ihm den Namen `$x`. Die letzte, `-> $x { ... }`, ist für sich selbst eine kleine Funktion. Du lernst sie in [Anonyme Subroutinen](/de/advanced/anonymous-subroutines) richtig kennen. Lies sie hier einfach als dritte Art, dieselbe Funktion mit einem Argument zu schreiben. Für einen einfachen Ausdruck ist der Stern am kürzesten. Deshalb kommt er bei `map`, `grep` und `sort` so oft vor:

```raku
say (1..5).map(* * 2);            # (2 4 6 8 10)
say (1..5).map({ $_ * 2 });       # (2 4 6 8 10)
say (1..5).map(-> $x { $x * 2 }); # (2 4 6 8 10)
```

Wähle einen **Block**, wenn der Code mehr als einen Ausdruck braucht. Ein Block ist auch gut, wenn ein klarer Parametername hilft. Wähle den **Stern**, wenn ein kurzer Ausdruck genügt.

## Mehr als ein Stern

Jedes `*` im Ausdruck ist ein eigenes Argument, der Reihe nach. Zwei Sterne ergeben also eine Funktion mit **zwei** Argumenten:

```raku
my $add = * + *;

say $add(3, 4); # 7
```

Hier ist `* + *` eine Funktion mit zwei Argumenten, und sie addiert die beiden. Sie kann zum Beispiel eine laufende Summe und das nächste Element addieren.

## Der Whatever für sich allein

Für sich allein bedeutet `*` „was auch immer“: so viel, wie vorhanden ist, oder ohne Grenze. Hier sind zwei häufige Verwendungen:

```raku
my @a = 10, 20, 30;
say @a[*-1];        # 30  — * ist die Array-Länge, also ist *-1 der letzte Index

say (1..*).head(3); # (1 2 3)  — 1..* ist ein offener Bereich
```

In `@a[*-1]` steht der Stern für die Anzahl der Elemente. In `1..*` bedeutet er „keine Obergrenze“. Der Stern kann eine Funktion bauen oder „was auch immer du willst“ bedeuten. So oder so ist er eine der nützlichsten Kurzformen in Raku.

{% include nav.html %}
