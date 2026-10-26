---
title: 'Розв''язання: Спільні елементи'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

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

1. Переріз `$a ∩ $b` — теж множина. Тут це `{banana, cherry}`. Тож він має `2` елементи. Якщо хочете ASCII, пишіть `(&)` замість `∩`.

1. Переріз — це множина. Тож `∈` може перевірити, чи є в ньому значення. `apple` є лише в першій множині. Тож у перерізі його немає. Перевірка повертає `False`.

{% include nav.html %}
