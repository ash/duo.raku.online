---
title: Ein natives Array
---

{% include menu.html %}

## Aufgabe

Die natürliche Verwendung für einen nativen Typ mit fester Größe ist ein Array aus Bytes. Solch ein Array braucht wenig Speicher. Deklariere ein `uint8`-Array mit den Werten `100`, `200` und `255`. Jeder davon passt in ein einzelnes Byte. Dann gib die Summe seiner Elemente aus.

Beachte, dass jedes Element im Bereich `0..255` bleibt, die Summe aber höher werden kann. Das liegt daran, dass `.sum` einen normalen `Int` zurückgibt.

## Beispiel

Das Programm gibt aus:

```
555
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
