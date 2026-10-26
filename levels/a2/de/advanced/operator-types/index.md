---
title: Typen von Raku-Operatoren
translations_gpt:
---

{% include menu.html %}

Sie kennen schon viele Operatoren, wie `+`, `~` und `++`. Ein Operator arbeitet mit Werten. Diese Werte sind seine Operanden. Raku teilt Operatoren in Kategorien ein. Eine Kategorie ist eine Gruppe. Die Kategorie hängt davon ab, _wo_ der Operator neben seinen Operanden steht. Später machen Sie eigene Operatoren. Dann helfen Ihnen die Kategorien.

## `prefix`

Ein Präfix-Operator hat einen Operanden. Er steht _vor_ diesem Operanden:

```raku
my $x = 5;
say -$x; # -5
say ?$x; # True
```

Hier ändert `-` das Vorzeichen der Zahl. Der Operator `?` macht aus einem Wert `True` oder `False`. Das ist sein Boolescher Wert.

## `infix`

Ein Infix-Operator steht _zwischen_ zwei Operanden. Sie kennen viele Operatoren für Zahlen und Strings. Die meisten davon sind Infix-Operatoren:

```raku
say 3 + 4;       # 7
say 'a' ~ 'b';   # ab
```

Ein Infix-Operator ist nicht immer ein Symbol. Er kann auch ein Wort sein. Nehmen Sie den Operator `gcd` aus dem Abschnitt über [ganze Zahlen](/de/advanced/integers). Er ist ein Infix-Operator. Sie schreiben seinen Namen zwischen seine zwei Operanden:

```raku
say 12 gcd 18;   # 6
```

## `postfix`

Ein Postfix-Operator hat einen Operanden. Er steht _nach_ diesem Operanden:

```raku
my $x = 5;
$x++;
say $x; # 6
```

## `circumfix` und `postcircumfix`

Ein Circumfix-Operator steht _um_ seinen Operanden herum. Schauen Sie sich die eckigen Klammern an, die ein Array machen. Sie sind ein Circumfix-Operator:

```raku
my @a = [1, 2, 3];
```

Ein Postcircumfix-Operator steht auch um etwas herum. Aber er kommt nach einem Term. Ein Term ist zum Beispiel eine Variable. Subscripts sind Postcircumfix-Operatoren. Hier ist der Subscript das `[1]` nach `@a`:

```raku
my @a = 10, 20, 30;
say @a[1]; # 20
```

Die Namen sind `prefix`, `infix`, `postfix`, `circumfix` und `postcircumfix`. Raku benutzt dieselben Wörter, wenn Sie [einen neuen Operator deklarieren](/de/advanced/user-defined-operators). Das sehen Sie später.

{% include nav.html %}
