---
title: 'Solution: Die Konstante lesen'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

Das Programm, `read-pi.raku`:

```raku
need Circle;

say $Circle::pi;
```

🦋 Du findest die Quelldateien im Verzeichnis [exercises/advanced/modules-basics/read-the-constant](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/read-the-constant).

## Ausgabe

```console
$ raku -I. read-pi.raku
3.14
```

## Kommentare

1. `need Circle` lädt das Modul, aber es importiert keine Namen. Also würde Raku ein `$pi` allein nicht erkennen.

1. Das Programm erreicht die `our`-Variable über den Namen des Moduls, als `$Circle::pi`.

{% include nav.html %}
