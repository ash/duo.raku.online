---
title: 'Решение: Слишком большое'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

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

1. `TooBig is Exception` делает класс исключением, которое можно бросить. Он несёт два значения: `value` и `limit`. Его метод `message` вставляет оба в текст, который он выдаёт.

1. `.throw` бросает исключение, а `when TooBig` сопоставляет его по типу. Обработчик делает больше, чем просто печатает сообщение. Он напрямую читает атрибут `limit` у перехваченного объекта, чтобы дать полезную подсказку. Вот почему собственное исключение лучше простой строки. Обработчик получает данные с понятной структурой, с которыми он может работать.

1. Исключение бросается **только** тогда, когда `$value > $limit`. Для `30` исключения нет, и тело цикла доходит до своего `say`. Он печатает, что значение в пределах нормы. Для `99` и `60` срабатывает `throw`, поэтому этот `say` пропускается. Вместо него исключение обрабатывает `CATCH`. Тело `for` само и есть тот блок, который охраняет `CATCH`. Поэтому перехваченное исключение завершает только текущий проход. Потом цикл просто переходит к следующему значению.

{% include nav.html %}
