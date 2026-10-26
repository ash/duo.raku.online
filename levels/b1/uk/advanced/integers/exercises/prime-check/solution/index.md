---
title: 'Розв''язання: Просте чи ні'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. `97` не має дільників, крім `1` і самого себе, тож `is-prime` повертає `True`.

1. `91` здається простим, але це `7 × 13`, тож `is-prime` повертає `False`. Метод знаходить множники за вас. Саме для цього він і потрібен.

{% include nav.html %}
