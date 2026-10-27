---
title: 'Решение: Поиск или «не найдено»'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

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

1. `lookup('z')` вызывает `fail`, поэтому возвращает неопределённый `Failure`.

1. Результат не определён, поэтому программа печатает `not found`. Она не пытается использовать сбойное значение.

1. `Failure` всё же несёт в себе исключение, которое описывает, что пошло не так. Его можно получить через `$r.exception`. Это заодно помечает сбой как обработанный, так что позже он не бросит исключение. Затем `.message` читает текст, переданный в `fail`, — `no such key`.

{% include nav.html %}
