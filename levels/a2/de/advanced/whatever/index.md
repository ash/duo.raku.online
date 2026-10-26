---
title: Der Whatever-Stern
translations_gpt:
---

{% include menu.html %}

Vielleicht hast du `*` schon in Ausdrücken wie `* * 2` oder `* %% 2` gesehen. Du benutzt sie mit `map` und `grep`. Dieses `*` ist der _Whatever-Stern_. Der Ausdruck um ihn herum macht eine kleine Funktion. Die Funktion hat ein Argument. Raku macht sie direkt an dieser Stelle. Dieser Abschnitt erklärt, was der Stern wirklich ist. Er vergleicht den Stern auch mit einem Block. Und er zeigt, wo der Stern allein einfach „was auch immer du willst“ bedeutet.

## Ein Stern erzeugt eine Funktion

Ein Ausdruck kann ein `*` enthalten. Dann macht Raku aus dem ganzen Ausdruck eine Funktion. Diese Funktion ist ein `WhateverCode`. Darin steht der Stern für das Argument:

```raku
my $double = * * 2;

say $double.^name; # WhateverCode
say $double(21);   # 42
```

`* * 2` ist eine Funktion. Sie nimmt ein Argument und multipliziert es mit zwei. Deshalb funktioniert `(1..5).map(* * 2)`. `map` bekommt genau so eine Funktion mit einem Argument.

## Whatever oder Block

Mit einem Whatever-Ausdruck kannst du eine Funktion kurz schreiben. Du kannst dieselbe Funktion auch als Block schreiben. Diese drei Zeilen machen dasselbe:

```raku
* * 2
{ $_ * 2 }
-> $x { $x * 2 }
```

Die Whatever-Form hat keinen Parameternamen. Die Block-Form benutzt die Topic-Variable `$_`. Die Pfeil-Form hat den Namen `$x`. Die letzte, `-> $x { ... }`, ist selbst eine kleine Funktion. Du lernst sie später kennen, in [Anonyme Subroutinen](/de/advanced/anonymous-subroutines). Sieh sie hier einfach als dritte Form derselben Funktion. Diese Funktion hat ein Argument. Für einen einfachen Ausdruck ist der Stern am kürzesten. Deshalb benutzt man ihn oft mit `map`, `grep` und `sort`:

```raku
say (1..5).map(* * 2);            # (2 4 6 8 10)
say (1..5).map({ $_ * 2 });       # (2 4 6 8 10)
say (1..5).map(-> $x { $x * 2 }); # (2 4 6 8 10)
```

Nimm einen **Block**, wenn der Code mehr als einen Ausdruck braucht. Ein Block ist auch besser, wenn ein klarer Parametername hilft. Nimm den **Stern**, wenn ein kurzer Ausdruck reicht.

## Mehr als ein Stern

Jedes `*` im Ausdruck ist ein eigenes Argument. Sie kommen der Reihe nach. Zwei Sterne machen also eine Funktion mit **zwei** Argumenten:

```raku
my $add = * + *;

say $add(3, 4); # 7
```

Hier ist `* + *` eine Funktion mit zwei Argumenten. Sie addiert die beiden. Das können zum Beispiel die Summe bis jetzt und das nächste Element sein.

## Der Whatever-Stern allein

Der Stern allein, `*`, bedeutet „was auch immer“. Er kann „so viel, wie da ist“ bedeuten. Er kann auch „ohne Grenze“ bedeuten. Hier sind zwei häufige Verwendungen:

```raku
my @a = 10, 20, 30;
say @a[*-1];        # 30  — * ist die Array-Länge, also ist *-1 der letzte Index

say (1..*).head(3); # (1 2 3)  — 1..* ist ein offener Bereich
```

In `@a[*-1]` ist der Stern die Anzahl der Elemente. In `1..*` bedeutet der Stern „keine obere Grenze“. Manchmal macht der Stern eine Funktion. Manchmal bedeutet er „was auch immer du willst“. In beiden Fällen ist er eine der nützlichsten Kurzformen von Raku.

{% include nav.html %}
