---
title: Typen mit fester Größe und Überlauf
---

{% include menu.html %}

Neben dem einfachen `int` hat Raku Ganzzahlen mit einer festen Größe in Bits. Das sind `int8`, `int16`, `int32`, `int64` und ihre vorzeichenlosen Partner `uint8`, `uint16`, `uint32`, `uint64`. Die Zahl zeigt, wie viele Bits der Wert braucht.

Wenn die Breite fest ist, ist auch der Bereich fest. Ein `int8` fasst Werte von `-128` bis `127`, und ein `uint8` von `0` bis `255`. Der Speicher kann nicht wachsen, also springt ein Wert über dem oberen Ende zurück zum unteren Ende. Das nennt man _Überlauf_:

```raku
my int8 $i = 127;
$i++;
say $i; # -128
```

Wenn du eins zum größten `int8` addierst, bekommst du nicht `128`. Diese Zahl würde nicht hineinpassen. Stattdessen springt der Wert zum kleinsten Wert, `-128`. Vorzeichenlose Typen laufen auch um:

```raku
my uint8 $u = 255;
$u++;
say $u; # 0
```

Ein normaler `Int` ist das Gegenteil. Er wird einfach so groß wie nötig und läuft nie über. Dieser Tausch ist der ganze Sinn von nativen Typen mit fester Größe. Du akzeptierst einen festen Bereich. Dafür bekommst du Speicher, der vorhersagbar, klein und schnell ist.

Kennst du den Bereich deiner Daten, und willst du Effizienz? Dann benutze einen nativen Typ mit fester Größe. Speichere zum Beispiel Bytes von Binärdaten in einem `uint8`-Array. Für normale Arithmetik, bei der Zahlen ohne Grenze wachsen können, bleib bei `Int`.

{% include nav.html %}
