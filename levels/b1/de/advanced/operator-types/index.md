---
title: Typen von Raku-Operatoren
translations_gpt:
---

{% include menu.html %}

Sie haben schon viele Operatoren verwendet, zum Beispiel `+`, `~` und `++`. Die Operanden sind die Werte, mit denen ein Operator arbeitet. In Raku werden Operatoren danach in Kategorien eingeteilt, _wo_ sie neben ihren Operanden stehen. Die Kategorien zu kennen hilft Ihnen später, wenn Sie eigene Operatoren erstellen.

## `prefix`

Ein Präfix-Operator steht _vor_ seinem einzigen Operanden:

```raku
my $x = 5;
say -$x; # -5
say ?$x; # True
```

Hier ändert `-` das Vorzeichen der Zahl. Der Operator `?` wandelt einen Wert in seinen Booleschen Wert um.

## `infix`

Ein Infix-Operator steht _zwischen_ zwei Operanden. Die meisten Rechen- und String-Operatoren, die Sie kennen, funktionieren so:

```raku
say 3 + 4;       # 7
say 'a' ~ 'b';   # ab
```

Ein Infix-Operator muss kein Symbol sein. Er kann auch ein Wort sein. Zum Beispiel ist der Operator `gcd` aus dem Abschnitt über [ganze Zahlen](/de/advanced/integers) ein Infix-Operator. Er ist ein Name, den Sie zwischen seine zwei Operanden schreiben:

```raku
say 12 gcd 18;   # 6
```

## `postfix`

Ein Postfix-Operator steht _nach_ seinem einzigen Operanden:

```raku
my $x = 5;
$x++;
say $x; # 6
```

## `circumfix` und `postcircumfix`

Ein Circumfix-Operator steht _um_ seinen Operanden herum. Die eckigen Klammern, die ein Array erzeugen, sind ein Beispiel dafür:

```raku
my @a = [1, 2, 3];
```

Ein Postcircumfix-Operator steht auch um etwas herum, aber er kommt nach einem Term. Ein Subscript wie das `[1]` nach `@a` ist ein Postcircumfix-Operator:

```raku
my @a = 10, 20, 30;
say @a[1]; # 20
```

Das sind die Namen der Kategorien: `prefix`, `infix`, `postfix`, `circumfix` und `postcircumfix`. Wie Sie später sehen werden, benutzt Raku dieselben Wörter, um [einen neuen Operator zu deklarieren](/de/advanced/user-defined-operators).

{% include nav.html %}
