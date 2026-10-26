---
title: 'Solution: Вложено име'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
module Outer {
    module Inner {
        our $base = 10;
        our sub doubled { $base * 2 }
    }
}

say $Outer::Inner::base;
say Outer::Inner::doubled();
```

🦋 Можете да намерите изходния код във файла [nested-name.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/packages/nested-name.raku).

## Изход

```
10
20
```

## Коментари

1. Когато сложите едно пространство от имена вътре в друго, получавате по-дълъг път с `::`. И променливата, и подпрограмата са на две нива навътре, в `Outer::Inner`.

1. Пълното име `$Outer::Inner::base` достига до променливата. `Outer::Inner::doubled()` достига до подпрограмата през същите две нива. Името на подпрограмата няма сигил. Затова, за разлика от променливата, то няма `$` отпред.

1. И двата члена са декларирани с `our`. Точно това ги прави видими извън техния модул. С `my` те биха останали частни за `Inner`.

{% include nav.html %}
