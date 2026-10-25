---
title: 'Solution: Intervallfunktion'
---

{% include menu.html %}

Die Funktion hat ein `if` mit drei Zweigen. Die ersten zwei Zweige haben einen Test. Der Test ist `True` oder `False`. Der dritte Zweig braucht keinen Test. Eine Zahl kann die ersten zwei Tests nicht bestehen. Dann bleibt nur der dritte Zweig übrig.

## Code

Hier ist die Lösung:

```raku
sub f($x) {
    if    $x > 0  { return $x - 0.5 }
    elsif $x == 0 { return 0 }
    else          { return -$x }
}

say f(-2);
say f(0);
say f(3);
```

🦋 Finde das Programm in der Datei [interval-function.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/interval-function.raku).

## Ausgabe

```console
$ raku exercises/functions/interval-function.raku
2
0
2.5
```

{% include nav.html %}
