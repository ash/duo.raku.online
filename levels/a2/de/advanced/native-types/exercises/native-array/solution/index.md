---
title: 'Solution: Ein natives Array'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my uint8 @bytes = 100, 200, 255;
say @bytes.sum;
```

🦋 Du findest den Quellcode in der Datei [native-array.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/native-types/native-array.raku).

## Ausgabe

```
555
```

## Kommentare

1. Schreib den nativen Typ `uint8` mit fester Größe vor das `@`-Array. Dann speichert Raku jedes Element in einem Byte. Dieses Byte ist vorzeichenlos: Es hat kein Minuszeichen. Solch ein Array braucht wenig Speicher. Das ist gut für Binärdaten.

1. Jedes *Element* hat eine Grenze, `0..255`. Über diese Grenze hinaus laufen die Werte um. Aber die Grenze gilt nicht für die Summe der Elemente. `.sum` steckt die Summe in einen normalen `Int`. Deshalb ergibt `100 + 200 + 255` die volle `555`.

{% include nav.html %}
