---
title: Oefening ’Werknemers en rollen‘
translations_gpt:
---

{% include menu.html %}

## Opgave

Maak een basisklasse `Employee`. Dit is de ouderklasse voor de andere klassen. Ze heeft een attribuut `name` en twee methoden. De methode `role` geeft `'staff'` terug. De methode `badge` geeft de string `<name> - <role>` terug. Voor de rol roept ze haar eigen methode `role` aan.

Maak daarna twee kindklassen, `Manager` en `Intern`. Ze erven van `Employee`. Elke klasse overschrijft `role`. Dat betekent dat ze een eigen versie van deze methode heeft. In `Manager` geeft `role` de waarde `'manager'` terug. In `Intern` geeft ze `'intern'` terug.

Druk de badge af van een manager met de naam `Anna`. Druk daarna de badge af van een stagiair met de naam `Bob`.

## Voorbeeld

Het programma drukt af:

```
Anna - manager
Bob - intern
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
