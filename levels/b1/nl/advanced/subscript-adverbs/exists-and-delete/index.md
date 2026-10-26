---
title: Exists en delete
---

{% include menu.html %}

Het `:exists` adverb verandert een subscript in een vraag. Is er een waarde bij deze sleutel of index? Het adverb geeft een Booleaanse waarde terug, maar het haalt de waarde zelf niet op:

```raku
my %h = apple => 1, pear => 2;

say %h<apple>:exists; # True
say %h<plum>:exists;  # False
```

Dit is de juiste manier om op een sleutel te controleren. Als je gewoon `%h<plum>` leest, krijg je een ongedefinieerde waarde. Afhankelijk van de data kan dat het verschil verbergen tussen "afwezig" en "aanwezig maar ongedefinieerd".

Het `:delete` adverb verwijdert het item en geeft je de waarde ervan terug:

```raku
my %h = apple => 1, pear => 2;

say %h<apple>:delete; # 1
say %h.keys;          # (pear)
say %h;               # {pear => 2}
```

Het `apple` item is verdwenen. Je krijgt de verwijderde waarde `1` terug, zodat je hem kunt gebruiken.

Beide adverbs werken ook op arrays, met een index:

```raku
my @a = 10, 20, 30;

say @a[1]:exists; # True
say @a[5]:exists; # False

say @a[1]:delete; # 20
say @a[1]:exists; # False
```

Hoe ziet de array eruit nadat een element in het midden is verwijderd? Hier is het antwoord:

```raku
say @a; # [10 (Any) 30]
```

Zo kun je met één consistente notatie containers ter plekke controleren en veranderen. Je hebt hier geen aparte methoden voor nodig.

{% include nav.html %}
