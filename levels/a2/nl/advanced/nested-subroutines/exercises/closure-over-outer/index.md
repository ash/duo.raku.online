---
title: Afsluiten over de buitenste
translations_gpt:
---

{% include menu.html %}

## Probleem

Een geneste subroutine is een *closure*. Ze kan de variabelen zien van de subroutine eromheen. Schrijf een subroutine `greet($name)`. Definieer daarin een hulpfunctie `message`. De hulpfunctie neemt **geen** argumenten aan. Ze geeft `"Hello, $name!"` terug. Ze haalt `$name` direct uit `greet` eromheen. Druk binnen `greet` het resultaat van `message` af. Roep daarna `greet('Anna')` aan.

## Voorbeeld

Het programma drukt af:

```
Hello, Anna!
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
