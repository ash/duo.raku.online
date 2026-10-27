---
title: 'Oplossing: Zoek een methode'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
class Animal {
    method speak { 'generic' }
}

class Dog is Animal {
}

say so Dog.^find_method('speak');
```

🦋 Je kunt de broncode vinden in het bestand [find-method.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/find-method.raku).

## Uitvoer

```
True
```

## Opmerkingen

1. `.^find_method` geeft de methode terug als die bestaat. Als dat niet zo is, geeft ze een ongedefinieerde waarde terug. Dan maakt `so` daar een simpele Boolean van.

1. `Dog` definieert zelf geen methoden, maar het resultaat is toch `True`. `find_method` doorzoekt de hele overervingsketen en vindt `speak` hogerop, in `Animal`. Zo vindt ook een echte methodeaanroep op een `Dog` de geërfde methode.

{% include nav.html %}
