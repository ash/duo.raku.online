---
title: 'Розв''язання: Оператор середнього'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
sub infix:<avg>($a, $b) {
    ($a + $b) / 2
}

say 4 avg 10;
```

🦋 Вихідний код можна знайти у файлі [average-operator.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/user-defined-operators/average-operator.raku).

## Вивід

```
7
```

## Коментарі

1. Ми оголошуємо оператор як `infix:<avg>`. Тож ви пишете його між двома операндами, як `+` чи `~`.

1. Тіло додає два операнди. Потім воно ділить суму на два. Для `4` і `10` результат — `7`.

{% include nav.html %}
