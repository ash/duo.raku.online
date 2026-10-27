---
title: 'Розв''язання: Зіставте тип'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

🦋 Вихідний код можна знайти у файлі [match-the-type.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/exception-objects/match-the-type.raku).

## Вивід

```
cannot divide by zero
```

## Коментарі

1. У Raku `1 / 0` не падає одразу. Натомість воно дає лінивий `Failure`, який чекає, поки його використають. Виняток кидається лише тоді, коли ми *використовуємо* значення. Тут це стається, коли ми намагаємося вивести його через `say`.

1. Кинутий виняток має вбудований тип `X::Numeric::DivideByZero`. Гілка `when X::Numeric::DivideByZero` збігається саме з цим типом. Тут ви зіставляєте конкретний тип, а не перехоплюєте все через `default`. Це дозволяє по-різному обробляти різні помилки.

{% include nav.html %}
