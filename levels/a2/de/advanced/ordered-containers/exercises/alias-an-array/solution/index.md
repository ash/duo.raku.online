---
title: 'Solution: Ein Array aliasieren'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

1. Sieh dir das Binding `@alias := @original` an. Es macht `@alias` zu einem zweiten Namen für denselben Array-Container. Es kopiert das Array nicht.

1. Diesmal ändert das Programm das Array über `@original`. Es ändert die Struktur: `push` fügt ein Element hinzu. Beide Namen gehören zu genau demselben Container. Also sieht `@alias` auch das neue Element. Die beiden Namen funktionieren genau gleich. Du kannst das Array mit jedem der beiden Namen lesen oder ändern.

{% include nav.html %}
