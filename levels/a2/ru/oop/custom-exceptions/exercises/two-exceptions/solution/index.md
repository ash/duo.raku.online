---
title: 'Решение: Два типа исключений'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
class TooSmall is Exception {
    method message { 'too small' }
}

class TooBig is Exception {
    method message { 'too big' }
}

for TooSmall, TooBig -> $type {
    {
        $type.new.throw;

        CATCH {
            when TooSmall { say 'small' }
            when TooBig   { say 'big' }
        }
    }
}
```

🦋 Исходный код можно найти в файле [two-exceptions.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/custom-exceptions/two-exceptions.raku).

## Вывод

```
small
big
```

## Комментарии

1. На первом проходе цикл бросает `TooSmall`. На втором проходе он бросает `TooBig`. Каждое исключение бросается внутри своего блока. У каждого блока есть свой `CATCH`.

1. У фазера `CATCH` есть ветвь `when` для каждого типа исключения. На каждом проходе работает только одна ветвь. Это ветвь для типа брошенного исключения. Поэтому первый проход печатает `small`, а второй — `big`. Каждая ветвь `when` — это обработчик для одного типа. Поэтому один набор обработчиков может по-разному обрабатывать каждый вид ошибки.

{% include nav.html %}
