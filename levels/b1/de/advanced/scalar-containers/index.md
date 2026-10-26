---
title: Skalare Container
---

{% include menu.html %}

Wie der Name schon sagt, speichern Skalar-Container einzelne, also skalare, Werte. Diese Container haben das Sigil `$`.

Hier ist eine sehr einfache und direkte Art, einen Skalar zu verwenden:

```raku
my $lang = 'Raku';
```

Die Variable `$lang` ist ein Skalar-Container.

Standardmäßig begrenzen Skalar-Container den Typ ihrer Daten nicht. Also kannst du darin einen Wert von jedem Typ speichern. Hier ist der einfachste Weg, das zu zeigen. Du kannst dieselbe Variable erst für eine Ganzzahl und dann für einen String verwenden:

```raku
my $value = 42;
$value = 'forty-two';
```

Der Autor ermutigt dich nicht, Programme so zu schreiben.

Intern bedeutet das Folgendes. Standardmäßig kann ein neuer Container Werte vom Typ `Any` speichern. `Any` ist der Basistyp der meisten anderen Typen, wie `Int` oder `Str`.

{% include nav.html %}
