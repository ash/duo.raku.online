---
title: 'Solution: Der Wert von π'
---

{% include menu.html %}

Ein Programm, das den Wert von π ausgibt, ist recht einfach.

## Code

```raku
say π;
```

🦋 Du kannst den vollständigen Code in der Datei [pi.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/pi.raku) finden.

## Ausgabe

Führe das Programm aus und sieh, was es ausgibt:

```console
$ raku exercises/numbers/pi.raku
3.141592653589793
```

## Kommentare

Raku gibt uns eine eingebaute Konstante namens `π`, deshalb ist das Programm sehr einfach. Trotzdem zeigen wir hier noch einige andere Wege, dasselbe zu tun:

```raku
    π.say;
```

Oder:

```raku
    pi.say;
```

Oder:

```raku
    say pi;
```

{% include nav.html %}
