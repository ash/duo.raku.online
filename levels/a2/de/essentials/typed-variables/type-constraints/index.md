---
title: Typbeschränkungen
---

{% include menu.html %}

Raku hat ein sogenanntes graduelles Typsystem. Das heißt, Sie können Typen nur dort verwenden, wo Sie sie wollen. Meistens müssen Sie den Typ einer Variablen nicht angeben. Aber manchmal wollen Sie den Typ einer Variablen vielleicht einschränken. Dann geben Sie den Typ so an:

```raku
my Int $var = 42;
```

Jetzt können Sie `$var` einen anderen ganzzahligen Wert zuweisen. Aber Sie können keine Zeichenkette darin speichern. Sie können nicht einmal eine Gleitkommazahl darin speichern. Wenn Sie es versuchen, bekommen Sie eine Ausnahme:

```raku
my Int $var = 42;
$var = '314E-2';
```

Das Programm gibt diesen Fehler aus:

    Type check failed in assignment to $var; expected Int but got Str ("314E-2")
      in block <unit> at t.raku line 2

{% include nav.html %}
