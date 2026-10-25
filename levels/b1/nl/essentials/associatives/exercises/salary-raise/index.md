---
title: Salarisverhoging
---

{% include menu.html %}

## Probleem

Hier is een hash met de gegevens van een werknemer:

```raku
my %employee =
    full-name => 'Eliza Vents',
    department => 'Sales',
    salary => 3000;
```

Verhoog het salaris met 5&thinsp;% en print het samen met de naam van de werknemer. Na de verhoging moet de `%employee` hash nog steeds de juiste waarden bevatten.

## Voorbeeld

Dit is wat het programma moet printen:

```console
$ raku salary-raise.raku
Nieuw salaris van Eliza Vents: 3150
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
