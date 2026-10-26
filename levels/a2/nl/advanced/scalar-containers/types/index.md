---
title: Gegevenstypen en scalaire containers
translations_gpt:
---

{% include menu.html %}

Laten we naar een programma kijken. Het gebruikt dezelfde variabele voor verschillende soorten gegevens. We gebruiken `dd` om de gegevens bij elke stap te zien. Dit voorbeeld laat alleen zien hoe het werkt. Het is geen goede manier om programma's te schrijven.

```raku
my $value;
dd $value;

$value = 42;
dd $value;

$value = 'forty-two';
dd $value;
```

Elke `dd`-aanroep toont de huidige waarde van `$value`:

```
$value = Any
$value = 42
$value = "forty-two"
```

In het begin is de variabele leeg. `dd` toont de waarde als `Any`. Dat is de ongedefinieerde basiswaarde. Elke container zonder type begint daarmee. Na de toewijzingen toont `dd` het gehele getal. Daarna toont het de string.

Let op: `dd` drukt hier geen type af voor de naam. Een container zonder type heeft geen vast type. Daarom toont `dd` alleen de waarde. [Een container met een gedeclareerd type](/nl/advanced/scalar-containers/type-constraints) werkt anders. Dat zie je in het volgende onderwerp.

{% include nav.html %}
