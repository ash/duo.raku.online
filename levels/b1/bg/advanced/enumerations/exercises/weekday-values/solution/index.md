---
title: 'Solution: Номера на дни от седмицата'
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
enum Day (Mon => 1, Tue => 2, Wed => 3, Thu => 4, Fri => 5);

say Day(5);
say Day(1);
```

🦋 Можете да намерите пълния код във файла [weekday-values.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/enumerations/weekday-values.raku).

## Резултат

```
Fri
Mon
```

## Коментари

1. Ако запишете константите като двойки, можете да изберете числата. Тук те започват от `1`.

1. Ако извикате изброимия тип като `Day(5)`, той търси в обратна посока. Намира константата със стойност `5`, а това е `Fri`. По същия начин `Day(1)` дава `Mon`. Това е обратното на `Fri.value`, който минава от името към числото.

{% include nav.html %}
