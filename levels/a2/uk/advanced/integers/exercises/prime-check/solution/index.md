---
title: 'Розв''язання: Просте чи ні'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
say 97.is-prime;
say 91.is-prime;
```

🦋 Вихідний код можна знайти у файлі [prime-check.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/integers/prime-check.raku).

## Вивід

```
True
False
```

## Коментарі

1. `97` можна поділити тільки на `1` і на саме себе. Тому `is-prime` повертає `True`.

1. `91` здається простим, але це `7 × 13`. Тому `is-prime` повертає `False`. Метод сам знаходить множники за вас. Для цього й потрібен цей метод.

{% include nav.html %}
