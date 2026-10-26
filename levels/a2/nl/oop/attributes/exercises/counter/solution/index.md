---
title: 'Oplossing: Een teller'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

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

1. Het attribuut heeft `is rw`. Dus geeft zijn accessor een container terug waarin je kunt schrijven. `= 0` geeft het attribuut een beginwaarde. De eerste `say` controleert een nieuwe teller. Die begint echt bij de standaardwaarde, `0`.

1. Je kunt naar de accessor schrijven. Dus werkt `++` zoals je verwacht. Hij telt 1 op bij de teller.

{% include nav.html %}
