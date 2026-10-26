---
title: Typen mit fester Größe und Überlauf
---

{% include menu.html %}

Raku hat den einfachen `int`. Es hat auch Ganzzahlen mit einer festen Anzahl von Bits. Das sind `int8`, `int16`, `int32` und `int64`. Jede davon hat einen vorzeichenlosen Partner: `uint8`, `uint16`, `uint32` und `uint64`. Vorzeichenlose Werte sind nie negativ. Die Zahl im Namen sagt, wie viele Bits der Wert braucht.

Eine feste Größe bedeutet einen festen Bereich von Werten. In einen `int8` passen Werte von `-128` bis `127`. In einen `uint8` passen Werte von `0` bis `255`. Der Speicher kann nicht wachsen. Wenn ein Wert also über das obere Ende geht, läuft er um. Er kommt am unteren Ende wieder an. Das ist ein _Überlauf_:

```raku
my int8 $i = 127;
$i++;
say $i; # -128
```

Addiere eins zum größten `int8`. Du bekommst nicht `128`, weil `128` nicht hineinpasst. Der Wert springt zum kleinsten Wert, `-128`. Vorzeichenlose Typen laufen auch um:

```raku
my uint8 $u = 255;
$u++;
say $u; # 0
```

Ein normaler `Int` ist das Gegenteil. Er wird einfach so groß wie nötig. Er läuft nie über. Native Typen mit fester Größe sind ein Tausch. Du akzeptierst einen festen Bereich. Dafür ist der Speicher klein, schnell und ohne Überraschungen. Dieser Tausch ist der ganze Sinn von nativen Typen mit fester Größe.

Kennst du den Bereich deiner Daten? Willst du schnellen und kleinen Speicher? Dann benutze einen nativen Typ mit fester Größe. Speichere zum Beispiel Bytes von Binärdaten in einem `uint8`-Array. Beim normalen Rechnen können Zahlen ohne Grenze wachsen. Benutze dort `Int`.

{% include nav.html %}
