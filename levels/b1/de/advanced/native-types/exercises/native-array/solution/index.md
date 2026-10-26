---
title: 'Solution: Ein natives Array'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Der native Typ `uint8` mit fester Größe steht vor dem `@`-Array. Das deklariert ein Array, in dem jedes Element ein einzelnes vorzeichenloses Byte ist. Es braucht wenig Speicher, was gut für Binärdaten ist.

1. Die Umlaufgrenze `0..255` gilt für jedes *Element*, aber nicht für ihre Summe. `.sum` boxt die Summe in einen normalen `Int`. Also ergibt `100 + 200 + 255` die volle `555`.

{% include nav.html %}
