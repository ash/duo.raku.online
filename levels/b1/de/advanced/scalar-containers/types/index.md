---
title: Datentypen und skalare Container
---

{% include menu.html %}

Hier ist ein Programm, das eine Variable für verschiedene Arten von Daten verwendet. Wir verwenden `dd`, um bei jedem Schritt zu sehen, was im Container ist. Dieses Beispiel zeigt nur die Idee. Wir empfehlen diesen Programmierstil nicht.

```raku
my $value;
dd $value;

$value = 42;
dd $value;

$value = 'forty-two';
dd $value;
```

Jeder Aufruf von `dd` zeigt, was in diesem Moment in der Variable `$value` ist:

```
$value = Any
$value = 42
$value = "forty-two"
```

Zuerst ist die Variable leer, und `dd` zeigt ihren Wert als `Any`. Das ist der undefinierte Basiswert, mit dem jeder untypisierte Container beginnt. Nach den Zuweisungen zeigt `dd` die Ganzzahl und dann den String.

Beachte, dass `dd` hier keinen Typ vor dem Namen ausgibt. Ein untypisierter Container ist an keinen Typ gebunden, deshalb wird nur der Wert gezeigt. Das nächste Thema zeigt, dass sich [ein Container mit deklariertem Typ](/de/advanced/scalar-containers/type-constraints) anders verhält.

{% include nav.html %}
