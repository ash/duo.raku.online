---
title: 'Решение: Назовите ошибку'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

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

1. `die` происходит внутри `risky`, но исключение поднимается к вызывающей стороне. Его обрабатывает `CATCH` в блоке, который вызвал `risky`. Так обычно и работает обработка ошибок. Сбой и его обработчик не обязаны находиться в одной процедуре.

1. Обычный `die` со строкой создаёт исключение `X::AdHoc`, и `.^name` сообщает этот тип. Затем `.message` возвращает текст, переданный в `die`.

{% include nav.html %}
