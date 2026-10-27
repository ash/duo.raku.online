---
title: Oefening ’Werknemers en rollen‘
translations_gpt:
---

{% include menu.html %}

## Opgave

Definieer een basisklasse `Employee` met een attribuut `name` en twee methoden. De methode `role` geeft `'staff'` terug. De methode `badge` geeft de string `<name> - <role>` terug en gebruikt daarvoor haar eigen methode `role`.

Definieer daarna twee kindklassen, `Manager` en `Intern`, die van `Employee` erven. Ze overschrijven `role`: die geeft `'manager'` terug in `Manager` en `'intern'` in `Intern`.

Druk de badges af van een manager die `Anna` heet en een stagiair die `Bob` heet.

## Voorbeeld

Het programma drukt af:

```
Anna - manager
Bob - intern
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
