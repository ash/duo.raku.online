---
title: Methoden overschrijven
translations_gpt:
---

{% include menu.html %}

Een kindklasse kan haar eigen versie hebben van een methode die ze erft. Dat heet _overschrijven_. Bij een object van de kindklasse voert de aanroep de versie van het kind uit. De versie van de ouder draait niet.

```raku
class Animal {
    has $.name;
    method speak {
        'some sound';
    }
    method intro {
        "$.name says " ~ self.speak;
    }
}

class Dog is Animal {
    method speak {
        'Woof';
    }
}

class Cat is Animal {
    method speak {
        'Meow';
    }
}
```

`Dog` en `Cat` overschrijven elk `speak`. De methode `intro` komt zonder veranderingen van `Animal`. Ze roept `self.speak` aan, en die aanroep gebruikt de `speak` die bij het werkelijke object hoort:

```raku
say Dog.new(name => 'Rex').intro; # Rex says Woof
say Cat.new(name => 'Tom').intro; # Tom says Meow
```

Dezelfde geërfde `intro` geeft dus verschillende resultaten, omdat elk object zijn eigen `speak` heeft. Dit is een van de centrale ideeën van objectgeoriënteerd programmeren. Gedeelde code verandert haar gedrag, zodat het past bij elke soort object.

{% include nav.html %}
