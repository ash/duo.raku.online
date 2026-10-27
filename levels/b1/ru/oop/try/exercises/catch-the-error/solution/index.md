---
title: 'Решение: Перехватите ошибку'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
my $ok = try { 6 * 7 };
say $ok;

my $bad = try { die 'broken' };
say $bad.defined;
say $!.message;
```

🦋 Исходный код можно найти в файле [catch-the-error.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/try/catch-the-error.raku).

## Вывод

```
42
False
broken
```

## Комментарии

1. Когда блок выполняется без ошибки, `try` просто даёт значение блока. Поэтому `$ok` содержит `42`.

1. `die` во втором блоке бросает исключение. Поэтому тот блок даёт неопределённое значение, и `$bad.defined` равно `False`.

1. Перехваченное исключение хранится в специальной переменной `$!`. `$!.message` возвращает текст, который ему дали, — `broken`.

{% include nav.html %}
