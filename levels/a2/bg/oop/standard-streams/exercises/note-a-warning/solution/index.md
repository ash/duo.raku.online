---
title: 'Решение: Отбележете предупреждение'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
my $value = -3;

note 'Warning: the value is negative' if $value < 0;
say $value.abs;
```

🦋 Намерете програмата във файла [note-a-warning.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/standard-streams/note-a-warning.raku).

## Изход

```
Warning: the value is negative
3
```

## Коментари

1. `note` изпраща предупреждението в стандартната грешка. Той прави това само когато стойността наистина е отрицателна. `say` изпраща истинския резултат в стандартния изход. Резултатът е абсолютната стойност, `3`.

1. Предупреждението отива в стандартната грешка. Затова то не влиза в истинския изход на програмата. `2>/dev/null` изхвърля стандартната грешка. Тогава остава само `3`.

{% include nav.html %}
