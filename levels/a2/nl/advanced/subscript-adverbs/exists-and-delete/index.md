---
title: Exists en delete
---

{% include menu.html %}

Het adverb `:exists` maakt van een subscript een vraag. Is er een waarde bij deze sleutel of index? Het antwoord is `True` of `False`. Het adverb haalt de waarde niet op:

```raku
my %h = apple => 1, pear => 2;

say %h<apple>:exists; # True
say %h<plum>:exists;  # False
```

Dit is de juiste manier om op een sleutel te controleren. Je kunt ook gewoon `%h<plum>` lezen. Maar dan krijg je een ongedefinieerde waarde. Of je ziet bij sommige data het verschil niet. Is de sleutel "afwezig"? Of is hij "aanwezig maar ongedefinieerd"?

Het adverb `:delete` verwijdert het item. Het geeft de waarde van het item terug:

```raku
my %h = apple => 1, pear => 2;

say %h<apple>:delete; # 1
say %h.keys;          # (pear)
say %h;               # {pear => 2}
```

Het item `apple` is weg. Je krijgt de waarde `1` terug. Je kunt deze waarde gebruiken.

Beide adverbs werken ook met arrays. Daar gebruik je een index:

```raku
my @a = 10, 20, 30;

say @a[1]:exists; # True
say @a[5]:exists; # False

say @a[1]:delete; # 20
say @a[1]:exists; # False
```

Je verwijdert een element uit het midden. Hoe ziet de array er dan uit? Hier is het antwoord:

```raku
say @a; # [10 (Any) 30]
```

Je gebruikt dus één notatie, en die werkt altijd op dezelfde manier. Daarmee kun je iets over een container vragen. Je kunt de container ook ter plekke veranderen. Je hebt hier geen aparte methoden voor nodig.

{% include nav.html %}
