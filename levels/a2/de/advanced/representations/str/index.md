---
title: Die `.Str`-Methode
---

{% include menu.html %}

Die Methode `.Str` gibt die **einfache Stringform** eines Wertes zurück. Raku ruft sie auf, wenn es einen Wert als String braucht. Das nennt man *Stringkontext*. `print` und `put` rufen sie auf. Der Operator `~` ruft sie auch auf. Dieser Operator verbindet Strings. Das gilt auch für Werte in Strings mit doppelten Anführungszeichen.

```raku
say 42.Str;    # 42
my @a = 'alpha', 'beta', 'gamma';
say @a.Str;    # alpha beta gamma
```

Beachte: Das Array kommt **ohne Klammern** zurück. Zwischen seinen Elementen stehen nur Leerzeichen. Hier siehst du den Unterschied zu [`.gist`](../gist). Die Methode `.gist` behält die Klammern. Vergleiche die beiden Methoden nebeneinander:

```raku
my @data = 1, 2, 3;
say @data.gist; # [1 2 3]
say @data.Str;  # 1 2 3
```

Ein Wert in einem String mit doppelten Anführungszeichen verwendet `.Str`. Deshalb erscheint ein Array in einem String in der einfachen Form:

```raku
my @data = 10, 20, 30;
say "data: @data[]"; # data: 10 20 30
```

{% include nav.html %}
