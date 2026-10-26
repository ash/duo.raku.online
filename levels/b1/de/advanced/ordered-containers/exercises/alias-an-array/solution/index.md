---
title: 'Solution: Ein Array aliasieren'
---

{% include menu.html %}

Hier ist eine mögliche Lösung für die Aufgabe.

## Code

```raku
my @original = 10, 20, 30;
my @alias := @original;

@original.push(40);
say @alias;
```

🦋 Du findest den Quellcode in der Datei [alias-an-array.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/ordered-containers/alias-an-array.raku).

## Ausgabe

```
[10 20 30 40]
```

## Kommentare

1. Das Binding `@alias := @original` kopiert das Array nicht. Es macht `@alias` zu einem anderen Namen für denselben Array-Container.

1. Diesmal geht die Änderung über `@original`, und sie ändert die Struktur: `push` fügt ein Element hinzu. Beide Namen sind genau derselbe Container, also sieht `@alias` das neue Element auch. Du kannst immer den einen Namen statt des anderen verwenden. Es ist egal, mit welchem du das Array liest oder änderst.

{% include nav.html %}
