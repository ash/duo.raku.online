---
title: Skalare Container
---

{% include menu.html %}

Skalar-Container speichern einzelne, also skalare, Werte. Das sagt schon der Name. Solche Container haben das Sigil `$`.

Hier ist eine sehr einfache Verwendung eines Skalars:

```raku
my $lang = 'Raku';
```

Die Variable `$lang` ist ein Skalar-Container.

Standardmäßig begrenzt ein Skalar-Container den Datentyp nicht. Also kannst du darin einen Wert von jedem Typ speichern. Hier ist das einfachste Beispiel. Zuerst speichert eine Variable eine Ganzzahl. Dann speichert dieselbe Variable einen String:

```raku
my $value = 42;
$value = 'forty-two';
```

Der Autor empfiehlt nicht, so Code zu schreiben.

Im Inneren von Raku heißt das Folgendes. Standardmäßig kann ein neuer Container Werte vom Typ `Any` speichern. `Any` ist der Basistyp für die meisten anderen Typen. Zum Beispiel kommen `Int` und `Str` von `Any`.

{% include nav.html %}
