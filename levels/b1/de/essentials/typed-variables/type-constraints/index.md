---
title: Typbeschränkungen
---

{% include menu.html %}

Raku hat ein sogenanntes graduelles Typsystem. In den meisten Fällen müssen Sie sich um den Typ einer Variablen nicht kümmern. Aber manchmal möchten Sie eine Variable vielleicht auf einen Typ einschränken. Das können Sie tun, indem Sie den Typ angeben, wie unten gezeigt:

```raku
my Int $var = 42;
```

Jetzt können Sie `$var` einen anderen ganzzahligen Wert zuweisen. Aber wenn Sie versuchen, eine Zeichenkette darin zu speichern, bekommen Sie eine Ausnahme. Das passiert sogar mit einer Gleitkommazahl:

```raku
my Int $var = 42;
$var = '314E-2';
```

Dieses Programm gibt den folgenden Fehler aus:

    Type check failed in assignment to $var; expected Int but got Str ("314E-2")
      in block <unit> at t.raku line 2

{% include nav.html %}
