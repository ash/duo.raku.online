---
title: 'Решение: Общие элементы'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение задачи.

## Код

```raku
my $a = set(<apple banana cherry>);
my $b = set(<banana cherry date>);

my $common = $a ∩ $b;
say $common.elems;
say 'apple' ∈ $common;
```

🦋 Исходный код можно найти в файле [common-elements.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sets-bags-mixes/common-elements.raku).

## Вывод

```
2
False
```

## Комментарии

1. Пересечение `$a ∩ $b` само является множеством, здесь это `{banana, cherry}`. Поэтому в нём `2` элемента. Если вам больше нравится ASCII, пишите `(&)` вместо `∩`.

1. Пересечение — это множество, поэтому `∈` может сказать, есть ли в нём значение. `apple` есть только в первом множестве, поэтому в пересечении его нет. Проверка возвращает `False`.

{% include nav.html %}
