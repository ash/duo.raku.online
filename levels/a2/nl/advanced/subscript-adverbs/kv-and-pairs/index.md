---
title: Sleutels, waarden en paren
translations_gpt:
---

{% include menu.html %}

Andere adverbs veranderen **wat** een subscript teruggeeft. Meestal geeft een subscript de waarde terug. Deze adverbs geven meer terug:

* `:v` — de waarde; dit is de standaard
* `:k` — de sleutel of de index
* `:kv` — de sleutel en de waarde
* `:p` — een `Pair` van de sleutel en de waarde

Voor een array is de "sleutel" de index:

```raku
my @a = 10, 20, 30;

say @a[1]:kv; # (1 20)
say @a[1]:p;  # 1 => 20
```

`@a[1]:kv` geeft de index en de waarde samen terug in een lijst. `@a[1]:p` geeft ze terug als een paar.

Dit werkt ook met hashes. Het is heel handig bij een slice. Een slice heeft meerdere sleutels tegelijk:

```raku
my %h = a => 1, b => 2, c => 3;

say %h<a c>:kv; # (a 1 c 3)
```

Hier heeft de slice twee sleutels. Het resultaat is een sleutel, zijn waarde, de volgende sleutel, zijn waarde. `map`, `for` en soortgelijke tools gebruiken deze adverbs vaak. Daarmee kun je met sleutels en waarden samen werken. Je hebt geen aparte opzoekingen nodig.

{% include nav.html %}
