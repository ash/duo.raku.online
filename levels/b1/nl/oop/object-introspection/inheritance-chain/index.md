---
title: De overervingsketen
translations_gpt:
---

{% include menu.html %}

Als een klasse van een andere erft, kun je haar hele keten van typen opvragen. De metamethode `.^mro` geeft deze keten terug. De naam staat voor _method resolution order_. Dat is de volgorde waarin Raku naar een methode zoekt.

```raku
class Animal {
}

class Dog is Animal {
}

say Dog.^mro; # ((Dog) (Animal) (Any) (Mu))
```

Lees de lijst vanaf links. Een `Dog` is eerst zichzelf, dan een `Animal` (zijn ouder), en dan `Any` en `Mu`. Deze twee typen staan helemaal bovenaan, en elk Raku-object erft ervan. Bij een methodeaanroep op een `Dog` doorzoekt Raku deze lijst van links naar rechts. Het gebruikt de eerste passende methode die het vindt. Precies daarom overschrijft de methode van een kind de methode van de ouder. Het kind komt eerder in de keten.

Als een klasse geen ouder heeft die je zelf noemt, is de keten korter. Daarin staat alleen de klasse zelf, gevolgd door `Any` en `Mu`.

{% include nav.html %}
