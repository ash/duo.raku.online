---
title: Salarisverhoging
---

{% include menu.html %}

## Probleem

Deze hash heeft de gegevens van één werknemer:

```raku
my %employee =
    full-name => 'Eliza Vents',
    department => 'Sales',
    salary => 3000;
```

Verhoog het salaris met 5&thinsp;%. Print het nieuwe salaris en de naam van de werknemer. Na de verandering moet de `%employee` hash de juiste waarden hebben.

## Voorbeeld

Het programma moet dit printen:

```console
$ raku salary-raise.raku
Nieuw salaris van Eliza Vents: 3150
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
