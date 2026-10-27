---
title: 'Решение: Сопоставьте тип'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

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

1. В Raku `1 / 0` не даёт сбой сразу. Вместо этого получается ленивый `Failure`, который ждёт, пока его не используют. Исключение бросается, только когда мы *используем* значение. Здесь это происходит, когда мы пытаемся напечатать его через `say`.

1. Брошенное исключение имеет встроенный тип `X::Numeric::DivideByZero`. Ветвь `when X::Numeric::DivideByZero` совпадает именно с этим типом. Здесь вы сопоставляете конкретный тип, а не перехватываете всё подряд через `default`. Так можно обрабатывать разные ошибки по-разному.

{% include nav.html %}
