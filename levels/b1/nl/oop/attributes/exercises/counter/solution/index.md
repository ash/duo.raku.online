---
title: 'Oplossing: Een teller'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
class Counter {
    has $.count is rw = 0;
}

my $c = Counter.new;
say $c.count;

$c.count++ for ^5;

say $c.count;
```

🦋 Je kunt de broncode vinden in het bestand [counter.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/counter.raku).

## Uitvoer

```
0
5
```

## Opmerkingen

1. Het attribuut is gedeclareerd met `is rw`, dus zijn accessor geeft een schrijfbare container terug. `= 0` geeft het een beginwaarde. De eerste `say` laat zien dat een nieuwe teller echt begint bij deze standaardwaarde, `0`.

1. De accessor is schrijfbaar, dus `++` kan hem verhogen. Dit werkt zoals je zou verwachten.

{% include nav.html %}
