---
title: 'Решение: Сопоставьте тип'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
{
    my $x = 1 / 0;
    say $x;

    CATCH {
        when X::Numeric::DivideByZero {
            say 'cannot divide by zero';
        }
    }
}
```

🦋 Исходный код можно найти в файле [match-the-type.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/exception-objects/match-the-type.raku).

## Вывод

```
cannot divide by zero
```

## Комментарии

1. В Raku `1 / 0` не даёт сбой сразу. Получается ленивый `Failure`. `Failure` — это значение с ошибкой внутри. Он ждёт, пока вы его не используете. Raku бросает исключение, только когда мы *используем* значение. Здесь мы пытаемся напечатать его через `say`.

1. Брошенное исключение имеет встроенный тип `X::Numeric::DivideByZero`. Ветвь `when X::Numeric::DivideByZero` совпадает именно с этим типом. Здесь вы сопоставляете один определённый тип. Вы не перехватываете всё подряд через `default`. Поэтому каждую ошибку можно обработать по-своему.

{% include nav.html %}
