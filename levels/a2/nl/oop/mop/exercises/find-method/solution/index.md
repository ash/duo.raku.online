---
title: 'Oplossing: Zoek een methode'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

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

1. `.^find_method` geeft de methode terug als die er is. Anders geeft ze een ongedefinieerde waarde terug. `so` maakt daar een simpele Boolean van, `True` of `False`.

1. `Dog` heeft geen eigen methoden. Maar het resultaat is `True`. `find_method` doorzoekt de hele overervingsketen. Ze vindt `speak` hogerop, in `Animal`. Een echte methodeaanroep op een `Dog` werkt op dezelfde manier. Die vindt de geërfde methode ook zo.

{% include nav.html %}
