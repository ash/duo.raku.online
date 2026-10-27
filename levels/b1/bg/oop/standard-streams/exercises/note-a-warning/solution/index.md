---
title: 'Решение: Отбележете предупреждение'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

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

1. `note` изпраща предупреждението в стандартната грешка, но само ако стойността наистина е отрицателна. `say` изпраща истинския резултат, абсолютната стойност `3`, в стандартния изход.

1. Предупреждението остава в стандартната грешка. Затова то не се смесва с истинския изход на програмата. Ако изхвърлите стандартната грешка с `2>/dev/null`, остава само `3`.

{% include nav.html %}
