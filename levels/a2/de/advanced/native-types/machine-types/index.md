---
title: Maschinennahe Typen
---

{% include menu.html %}

Die nativen Typen haben Namen in Kleinbuchstaben: `int`, `num` und `str`. Du deklarierst eine Variable mit ihnen genauso wie mit `Int` oder `Str`:

```raku
my int $i = 42;
my num $n = 3.14e0;
say $i; # 42
say $n; # 3.14
```

Ein nativer Wert passt direkt zu einem Maschinenregister oder Maschinenwort. Das sind kleine Plätze für Daten im Computer. Ein normaler Raku-Wert hat ein Wrapper-Objekt um sich herum. Ein nativer Wert hat keinen Wrapper. Deshalb sind native Typen schneller und brauchen weniger Speicher. Das ist wichtig in großen Arrays. Es ist auch wichtig in kurzen Schleifen, die viel rechnen.

Eine Sache solltest du gleich wissen. Eine native Variable ist nie undefiniert. Eine normale `Int`-Variable beginnt undefiniert. `say` zeigt sie als `(Int)`. Aber ein nativer `int` beginnt bei **Null**:

```raku
say (my Int $a); # (Int)
say (my int $b); # 0
```

Das gilt auch für native Arrays. Um ein natives Array zu deklarieren, schreib den nativen Typ vor die `@`-Variable:

```raku
my int @numbers = 10, 20, 30;
say @numbers.sum; # 60
```

Solch ein Array speichert seine Elemente als einfache Maschinen-Ganzzahlen. Sie sind keine vollwertigen `Int`-Objekte. Deshalb braucht das Array weniger Speicher. Du kannst einen nativen Wert nach seinem Typ fragen. Dann steckt Raku ihn automatisch in den passenden vollwertigen Typ. Wir sagen, der Wert wird _geboxt_. Darum zeigt `(my int $b).WHAT` den Typ `(Int)`.

{% include nav.html %}
