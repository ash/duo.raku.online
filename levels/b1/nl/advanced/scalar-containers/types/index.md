---
title: Gegevenstypen en scalaire containers
translations_gpt:
---

{% include menu.html %}

Hier is een programma dat één variabele gebruikt voor verschillende soorten gegevens. We gebruiken `dd` om te zien wat er bij elke stap in de container zit. Dit voorbeeld laat alleen het idee zien. We raden deze programmeerstijl niet aan.

```raku
my $value;
dd $value;

$value = 42;
dd $value;

$value = 'forty-two';
dd $value;
```

Elke aanroep van `dd` toont wat er op dat moment in de variabele `$value` zit:

```
$value = Any
$value = 42
$value = "forty-two"
```

In het begin is de variabele leeg, en `dd` toont de waarde als `Any`. Dat is de ongedefinieerde basiswaarde waarmee elke container zonder type begint. Na de toewijzingen toont `dd` het gehele getal en daarna de string.

Merk op dat `dd` hier geen type voor de naam afdrukt. Een container zonder type is aan geen enkel type gebonden, dus alleen de waarde wordt getoond. Het volgende onderwerp laat zien dat [een container met een gedeclareerd type](/nl/advanced/scalar-containers/type-constraints) zich anders gedraagt.

{% include nav.html %}
