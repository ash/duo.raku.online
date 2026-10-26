---
title: Sleutels, waarden en paren
translations_gpt:
---

{% include menu.html %}

Andere adverbs veranderen **wat** een subscript teruggeeft. Normaal geeft een subscript alleen de waarde terug, maar deze adverbs geven meer:

* `:v` — de waarde (de standaard)
* `:k` — de sleutel (of index)
* `:kv` — zowel de sleutel als de waarde
* `:p` — een `Pair` van sleutel en waarde

Voor een array is de "sleutel" de index:

```raku
my @a = 10, 20, 30;

say @a[1]:kv; # (1 20)
say @a[1]:p;  # 1 => 20
```

`@a[1]:kv` geeft de index en de waarde samen in een lijst. `@a[1]:p` geeft ze als een paar.

Hetzelfde werkt voor hashes. Het is vooral handig bij een slice van meerdere sleutels tegelijk:

```raku
my %h = a => 1, b => 2, c => 3;

say %h<a c>:kv; # (a 1 c 3)
```

Hier geeft een slice van twee sleutels elke sleutel terug, gevolgd door zijn waarde. `map`, `for` en soortgelijke tools vertrouwen vaak op deze adverbs. Daarmee kun je sleutels en waarden naast elkaar verwerken, zonder aparte opzoekingen.

{% include nav.html %}
