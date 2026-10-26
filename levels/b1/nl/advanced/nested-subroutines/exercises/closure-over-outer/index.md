---
title: Afsluiten over de buitenste
translations_gpt:
---

{% include menu.html %}

## Probleem

Een geneste subroutine is een *closure*. Dat betekent dat ze de variabelen kan zien van de subroutine die haar bevat. Schrijf een subroutine `greet($name)` met een geneste hulpfunctie `message` die **geen** argumenten aanneemt. De hulpfunctie geeft `"Hello, $name!"` terug en leest `$name` direct uit de `greet` eromheen. Druk binnen `greet` af wat `message` teruggeeft. Roep daarna `greet('Anna')` aan.

## Voorbeeld

Het programma drukt af:

```
Hello, Anna!
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
