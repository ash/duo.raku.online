---
title: 'Решение: Доменная часть'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
my $email = 'user@example.com';

my $at = $email.index('@');
say $email.substr($at + 1);
```

🦋 Исходный код можно найти в файле [find-domain.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/find-domain.raku).

## Вывод

```
example.com
```

## Комментарии

1. `index('@')` возвращает `4`. Это позиция знака `@`. Счёт начинается с нуля.

1. `substr($at + 1)` начинает с символа сразу после `@`. Длины нет. Поэтому он идёт до конца строки. Результат — `example.com`.

{% include nav.html %}
