---
title: 'Решение: Назовите ошибку'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
sub risky {
    die 'sub failed';
}

{
    risky();

    CATCH {
        default {
            say .^name;
            say .message;
        }
    }
}
```

🦋 Исходный код можно найти в файле [name-the-error.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/exception-objects/name-the-error.raku).

## Вывод

```
X::AdHoc
sub failed
```

## Комментарии

1. `die` случается внутри `risky`. Но исключение поднимается к вызывающему коду. Вызывающий код — это код, который вызвал `risky`. Здесь это блок. `CATCH` в этом блоке обрабатывает исключение. Так обычно и работает обработка ошибок. Код, который обрабатывает ошибку, — это её обработчик. Ошибка и её обработчик могут быть в разных процедурах.

1. Простой `die` со строкой создаёт исключение `X::AdHoc`. `.^name` показывает этот тип. `.message` возвращает текст, который мы дали `die`.

{% include nav.html %}
