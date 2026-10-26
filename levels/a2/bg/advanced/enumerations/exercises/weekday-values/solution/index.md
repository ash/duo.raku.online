---
title: 'Solution: Номера на дни от седмицата'
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. Записваме константите като двойки. Така можем да изберем числата. Тук те започват от `1`.

1. `Day(5)` извиква изброимия тип. Той търси в обратната посока, от числото към константата. Намира константата със стойност `5`. Тази константа е `Fri`. По същия начин `Day(1)` дава `Mon`. `Fri.value` прави обратното. Той минава от името към числото.

{% include nav.html %}
