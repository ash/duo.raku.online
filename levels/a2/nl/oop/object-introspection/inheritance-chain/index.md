---
title: De overervingsketen
translations_gpt:
---

{% include menu.html %}

Een klasse kan van een andere klasse erven. Dan kun je de hele keten van typen opvragen. De klasse is op deze typen gebouwd. De metamethode `.^mro` geeft deze keten terug. De naam betekent _method resolution order_. Raku zoekt in deze volgorde naar een methode.

```raku
class Animal {
}

class Dog is Animal {
}

say Dog.^mro; # ((Dog) (Animal) (Any) (Mu))
```

Lees de lijst vanaf links. Eerst is een `Dog` zichzelf. Dan is hij een `Animal`, zijn ouder. Dan is hij `Any` en `Mu`. Elk Raku-object erft van deze twee typen. Ze staan helemaal bovenaan. Als je een methode op een `Dog` aanroept, doorzoekt Raku deze lijst. Raku gaat van links naar rechts. Het gebruikt de eerste methode die past. Dit verklaart het overschrijven. Het kind komt eerder in de keten. Dus wint zijn methode van de methode van de ouder.

Soms heeft een klasse geen ouder met `is`. Dan is de keten korter. Daarin staan alleen de klasse zelf, en dan `Any` en `Mu`.

{% include nav.html %}
