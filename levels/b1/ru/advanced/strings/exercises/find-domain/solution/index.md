---
title: 'Решение: Доменная часть'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение задачи.

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

1. `index('@')` возвращает `4` — это позиция знака `@`, если считать с нуля.

1. `substr($at + 1)` начинает с символа сразу после `@`. Так как длина не указана, он идёт до конца строки. Результат — `example.com`.

{% include nav.html %}
