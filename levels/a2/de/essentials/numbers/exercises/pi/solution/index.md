---
title: 'Solution: Der Wert von π'
---

{% include menu.html %}

Es ist leicht, den Wert von π auszugeben.

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

Raku hat eine eingebaute Konstante `π`. Deshalb ist das Programm sehr einfach. Aber es gibt andere Wege, dasselbe zu tun:

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
