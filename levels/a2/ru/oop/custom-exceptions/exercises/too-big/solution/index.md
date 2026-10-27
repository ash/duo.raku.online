---
title: 'Решение: Слишком большое'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
class TooBig is Exception {
    has $.value;
    has $.limit;

    method message {
        "Value $.value exceeds the limit of $.limit";
    }
}

my $limit = 50;

for 30, 99, 60 -> $value {
    TooBig.new(value => $value, limit => $limit).throw if $value > $limit;
    say "Value $value is within the limit";

    CATCH {
        when TooBig {
            say .message;
            say "Try a value up to {.limit}.";
        }
    }
}
```

🦋 Исходный код можно найти в файле [too-big.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/custom-exceptions/too-big.raku).

## Вывод

```
Value 30 is within the limit
Value 99 exceeds the limit of 50
Try a value up to 50.
Value 60 exceeds the limit of 50
Try a value up to 50.
```

## Комментарии

1. `TooBig is Exception` делает класс исключением. Его можно бросить. Он хранит два значения: `value` и `limit`. Его метод `message` вставляет их оба в текст.

1. `.throw` бросает исключение. `when TooBig` совпадает с ним по типу. Код в `when TooBig` — это обработчик. Он не только печатает сообщение. Ещё он читает атрибут `limit` у перехваченного объекта. С его помощью обработчик даёт полезную подсказку. Вот почему собственное исключение лучше простой строки. Обработчик получает данные в понятном виде. Он может работать с этими данными.

1. Исключение бросается **только** тогда, когда `$value > $limit`. Для `30` исключения нет. Тело цикла выполняется до конца. Его `say` печатает, что значение не больше предела. Для `99` и `60` срабатывает `throw`. Поэтому программа пропускает этот `say`. Вместо него исключение обрабатывает `CATCH`. Здесь `CATCH` стоит прямо в теле цикла `for`. Поэтому перехваченное исключение завершает только текущий проход. Потом цикл просто переходит к следующему значению.

{% include nav.html %}
