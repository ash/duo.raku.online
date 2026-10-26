---
title: Datentypen und skalare Container
---

{% include menu.html %}

Sehen wir uns ein Programm an. Es verwendet dieselbe Variable für verschiedene Arten von Daten. Mit `dd` sehen wir die Daten bei jedem Schritt. Dieses Beispiel zeigt nur, wie die Dinge funktionieren. Es ist kein guter Weg, Programme zu schreiben.

```raku
my $value;
dd $value;

$value = 42;
dd $value;

$value = 'forty-two';
dd $value;
```

Jeder `dd`-Aufruf zeigt den aktuellen Wert von `$value`:

```
$value = Any
$value = 42
$value = "forty-two"
```

Zuerst ist die Variable leer. `dd` zeigt ihren Wert als `Any`. Das ist der undefinierte Basiswert. Jeder untypisierte Container beginnt damit. Nach den Zuweisungen zeigt `dd` die Ganzzahl. Dann zeigt es den String.

Beachte: `dd` gibt hier keinen Typ vor dem Namen aus. Ein untypisierter Container hat keinen festen Typ. Also zeigt `dd` nur den Wert. [Ein Container mit deklariertem Typ](/de/advanced/scalar-containers/type-constraints) funktioniert anders. Das siehst du im nächsten Thema.

{% include nav.html %}
