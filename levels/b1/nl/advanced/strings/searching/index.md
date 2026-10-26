---
title: Zoeken in strings
translations_gpt:
---

{% include menu.html %}

Verschillende methoden vertellen je wat een string bevat.

De methode `contains` controleert of de ene string ergens in de andere zit:

```raku
say 'Raku'.contains('ak'); # True
say 'Raku'.contains('xy'); # False
```

De methoden `starts-with` en `ends-with` controleren hoe een string begint en eindigt:

```raku
say 'Raku'.starts-with('Ra'); # True
say 'Raku'.ends-with('ku');   # True
```

Om de precieze positie van een deelstring te vinden, gebruik je `index`. Die geeft de positie van de eerste overeenkomst terug, geteld vanaf nul:

```raku
say 'Raku'.index('k'); # 2
```

Als `index` de deelstring niet vindt, geeft hij `Nil` terug in plaats van een getal:

```raku
say 'Raku'.index('z'); # Nil
```

{% include nav.html %}
