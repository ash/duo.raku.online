---
title: 'Решение: Поиск или «не найдено»'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
sub lookup($key) {
    fail 'no such key' if $key ne 'a';
    return 100;
}

my $r = lookup('z');
if $r.defined {
    say $r;
}
else {
    say 'not found';
    say "reason: {$r.exception.message}";
}
```

🦋 Исходный код можно найти в файле [lookup.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/failures/lookup.raku).

## Вывод

```
not found
reason: no such key
```

## Комментарии

1. `lookup('z')` вызывает `fail`. Поэтому она возвращает `Failure`. `Failure` — это неопределённое значение с ошибкой внутри.

1. Результат не определён. Поэтому программа печатает `not found`. Она не пытается использовать значение со сбоем.

1. Внутри `Failure` всё же лежит исключение. Исключение говорит, что пошло не так. `$r.exception` достаёт это исключение. Ещё это помечает сбой как обработанный. Поэтому позже он не вызовет ошибку. Потом `.message` читает текст из `fail`. Это текст `no such key`.

{% include nav.html %}
