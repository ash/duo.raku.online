---
title: 'Розв''язання: Прощальне повідомлення'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
my $count = 0;

END say "processed $count items";

$count++ for 1..3;
```

🦋 Вихідний код можна знайти у файлі [final-message.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/phasers/final-message.raku).

## Вивід

```
processed 3 items
```

## Коментарі

1. Фазер `END` стоїть у коді перед циклом. Але він виконується останнім, після основного коду. На той час цикл уже тричі додав 1 до `$count`.

1. Фазер тримає зв'язок зі змінною `$count`. Тож він читає *остаточне* значення змінної. Він не читає `0` з рядка фазера. Це звичайна причина класти підсумок у `END`.

{% include nav.html %}
