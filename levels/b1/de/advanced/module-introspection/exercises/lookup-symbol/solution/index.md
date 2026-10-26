---
title: 'Solution: Ein Symbol nachschlagen'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

Das Programm, `lookup.raku`:

```raku
use Circle;

say Circle::{'$pi'};
```

🦋 Du findest beide Quelldateien im Verzeichnis [exercises/advanced/module-introspection/lookup-symbol](https://github.com/ash/raku-course/tree/master/exercises/advanced/module-introspection/lookup-symbol).

## Ausgabe

```console
$ raku -I. lookup.raku
3.14
```

## Kommentare

1. `Circle::` ist der Stash des Moduls. Ein Name als Schlüssel, wie `Circle::{'$pi'}`, gibt den Wert, der darunter gespeichert ist. Der Schlüssel muss das Sigil enthalten, genau wie die aufgelisteten Namen.

1. Das ergibt denselben Wert wie das qualifizierte `$Circle::pi`. Aber hier ist der Name ein gewöhnlicher String. Also kann er zur Laufzeit gebildet werden. Er muss nicht im Quellcode ausgeschrieben werden.

{% include nav.html %}
