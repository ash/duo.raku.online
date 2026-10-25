---
title: Gehaltserhöhung
---

{% include menu.html %}

## Problem

Hier ist ein Hash mit den Daten eines Mitarbeiters:

```raku
my %employee =
    full-name => 'Eliza Vents',
    department => 'Sales',
    salary => 3000;
```

Erhöhe das Gehalt um 5&thinsp;% und gib es zusammen mit dem Namen des Mitarbeiters aus. Nach der Erhöhung muss der Hash `%employee` immer noch die richtigen Werte enthalten.

## Beispiel

Das sollte das Programm ausgeben:

```console
$ raku salary-raise.raku
Neues Gehalt von Eliza Vents: 3150
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
