---
title: 'Розв''язання: Парне, непарне чи нуль'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
my $n = 12;

given $n {
    when 0      { say 'zero' }
    when $_ %% 2 { say 'even' }
    default     { say 'odd' }
}
```

🦋 Вихідний код можна знайти у файлі [sign-of-a-number.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/given-when/sign-of-a-number.raku).

## Вивід

```
even
```

## Коментарі

1. `when 0` збігається лише з одним значенням — нулем. Він іде першим. Нуль теж парний, але ми хочемо показати його окремо.

1. `when $_ %% 2` — це умова. Тут `$_` — це топік з `given`. Оператор `%%` перевіряє, чи ділиться він на два без остачі. Значення `12` — не нуль. Але воно ділиться на два. Тож програма виводить `even`.

1. `default` — для всіх інших чисел. Вони не нуль і не парні. Тож це непарні числа.

{% include nav.html %}
