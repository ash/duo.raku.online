---
title: 'Решение: Перехватите ошибку'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. Здесь блок выполняется без ошибки. Тогда `try` просто даёт значение блока. Поэтому в `$ok` лежит `42`.

1. `die` во втором блоке бросает исключение. Поэтому этот блок даёт неопределённое значение. `$bad.defined` равно `False`.

1. Raku хранит перехваченное исключение в специальной переменной `$!`. `$!.message` возвращает текст исключения, `broken`.

{% include nav.html %}
