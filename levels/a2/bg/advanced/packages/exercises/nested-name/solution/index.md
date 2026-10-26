---
title: 'Solution: Вложено име'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. Тук едно пространство от имена е вътре в друго. Така се получава по-дълъг път с `::`. Променливата и подпрограмата са на две нива навътре, в `Outer::Inner`.

1. Пълното име `$Outer::Inner::base` стига до променливата. `Outer::Inner::doubled()` стига до подпрограмата през същите две нива. Името на подпрограмата няма сигил. Затова то няма `$` отпред, а променливата има.

1. И двете имат `our` отпред. Това ги прави видими извън техния модул. С `my` те биха останали частни за `Inner`.

{% include nav.html %}
