---
title: 'Solution: Броене и сума'
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
enum Coin (penny => 1, nickel => 5, dime => 10, quarter => 25);

say Coin.enums.elems;
say Coin.enums.values.sum;
```

🦋 Можете да намерите пълния код във файла [enum-introspection.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/enumerations/enum-introspection.raku).

## Резултат

```
4
41
```

## Коментари

1. Записваме константите като двойки. Така ние избираме стойността на всяка константа. Raku не ги номерира от нула.

1. `.enums` връща карта. Картата е като хеш. В нея всяко име на константа има своята стойност. `.elems` брои записите. Има четири монети.

1. `.values` взема само числата зад имената. `.sum` ги събира: `1 + 5 + 10 + 25` е `41`.

{% include nav.html %}
