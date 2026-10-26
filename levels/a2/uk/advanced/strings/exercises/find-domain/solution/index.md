---
title: 'Розв''язання: Доменна частина'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
my $email = 'user@example.com';

my $at = $email.index('@');
say $email.substr($at + 1);
```

🦋 Вихідний код можна знайти у файлі [find-domain.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/find-domain.raku).

## Вивід

```
example.com
```

## Коментарі

1. `index('@')` повертає `4`. Це позиція знака `@`. Рахунок починається з нуля.

1. `substr($at + 1)` починає на один символ після `@`. Довжини немає. Тому він іде до кінця рядка. Результат — `example.com`.

{% include nav.html %}
