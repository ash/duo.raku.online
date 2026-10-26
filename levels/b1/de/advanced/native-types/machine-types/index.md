---
title: Maschinennahe Typen
---

{% include menu.html %}

Die Namen der nativen Typen sind kleingeschrieben: `int`, `num` und `str`. Du benutzt sie, um eine Variable zu deklarieren, genau wie `Int` oder `Str`:

```raku
my int $i = 42;
my num $n = 3.14e0;
say $i; # 42
say $n; # 3.14
```

Ein nativer Wert entspricht direkt einem Maschinenregister oder Maschinenwort. Er hat kein Wrapper-Objekt, das ein normaler Raku-Wert immer hat. Dadurch sind native Typen schneller und brauchen weniger Speicher. Das ist wichtig in kurzen Schleifen, die viel rechnen, und in großen Arrays.

Eine Sache solltest du gleich wissen: Eine native Variable kann nie undefiniert sein. Eine normale `Int`-Variable beginnt als das undefinierte `(Int)`. Ein nativer `int` beginnt dagegen bei **Null**:

```raku
say (my Int $a); # (Int)
say (my int $b); # 0
```

Das Gleiche gilt für native Arrays. Du deklarierst sie, indem du den nativen Typ vor die `@`-Variable setzt:

```raku
my int @numbers = 10, 20, 30;
say @numbers.sum; # 60
```

Solch ein Array speichert seine Elemente als rohe Maschinen-Ganzzahlen, nicht als geboxte `Int`-Objekte. Deshalb braucht es weniger Speicher. Wenn du einen nativen Wert nach sich selbst fragst, _boxt_ Raku ihn automatisch. Raku steckt den Wert in den passenden vollwertigen Typ. Darum zeigt `(my int $b).WHAT` den Typ `(Int)`.

{% include nav.html %}
