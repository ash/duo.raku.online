---
title: Zoeken in strings
translations_gpt:
---

{% include menu.html %}

Sommige methoden vertellen je wat er in een string zit.

De methode `contains` controleert of een string in een andere string zit. Dat kan op elke plek zijn:

```raku
say 'Raku'.contains('ak'); # True
say 'Raku'.contains('xy'); # False
```

De methode `starts-with` controleert het begin van een string. De methode `ends-with` controleert het einde:

```raku
say 'Raku'.starts-with('Ra'); # True
say 'Raku'.ends-with('ku');   # True
```

Heb je de precieze positie van een deel van een string nodig? Gebruik dan `index`. Die geeft de positie van de eerste overeenkomst terug. Hij telt vanaf nul:

```raku
say 'Raku'.index('k'); # 2
```

Soms kan `index` het deel niet vinden. Dan geeft hij `Nil` terug, geen getal:

```raku
say 'Raku'.index('z'); # Nil
```

{% include nav.html %}
