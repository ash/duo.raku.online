---
title: 'Решение: Общие элементы'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. Пересечение `$a ∩ $b` — тоже множество. Здесь это `{banana, cherry}`. Поэтому в нём `2` элемента. Если вы хотите ASCII, пишите `(&)` вместо `∩`.

1. Пересечение — это множество. Поэтому `∈` может проверить, есть ли в нём значение. `apple` есть только в первом множестве. Поэтому его нет в пересечении. Проверка возвращает `False`.

{% include nav.html %}
