---
title: 'Solution: Броене и сума'
---

{% include menu.html %}

Ето едно възможно решение.

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

1. Константите са записани като двойки. Така всяка получава стойността, която сме избрали, а не автоматичните числа от нула.

1. `.enums` връща карта, в която всяко име на константа сочи към своята стойност. `.elems` брои записите, а монетите са четири.

1. `.values` дава само числата зад имената. После `.sum` ги събира: `1 + 5 + 10 + 25` е `41`.

{% include nav.html %}
