---
title: 'Розв''язання: Номери днів тижня'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
enum Day (Mon => 1, Tue => 2, Wed => 3, Thu => 4, Fri => 5);

say Day(5);
say Day(1);
```

🦋 Вихідний код можна знайти у файлі [weekday-values.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/enumerations/weekday-values.raku).

## Вивід

```
Fri
Mon
```

## Коментарі

1. Ми записуємо константи як пари. Тож ми можемо обрати числа. Тут вони починаються з `1`.

1. `Day(5)` викликає тип перелічення. Він шукає у зворотний бік, від числа до константи. Він знаходить константу зі значенням `5`. Ця константа — `Fri`. Так само `Day(1)` дає `Mon`. `Fri.value` робить навпаки. Він іде від імені до числа.

{% include nav.html %}
