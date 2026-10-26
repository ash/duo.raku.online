---
title: 'Розв''язання: Спільні елементи'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

## Код

```raku
my $a = set(<apple banana cherry>);
my $b = set(<banana cherry date>);

my $common = $a ∩ $b;
say $common.elems;
say 'apple' ∈ $common;
```

🦋 Вихідний код можна знайти у файлі [common-elements.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sets-bags-mixes/common-elements.raku).

## Вивід

```
2
False
```

## Коментарі

1. Переріз `$a ∩ $b` сам є множиною, тут це `{banana, cherry}`. Тож він має `2` елементи. Якщо вам більше подобається ASCII, пишіть `(&)` замість `∩`.

1. Переріз є множиною, тож `∈` може сказати, чи є в ньому значення. `apple` є лише в першій множині, тож у перерізі його немає. Перевірка повертає `False`.

{% include nav.html %}
