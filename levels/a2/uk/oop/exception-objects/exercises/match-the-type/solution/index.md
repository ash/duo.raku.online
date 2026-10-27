---
title: 'Розв''язання: Зіставте тип'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

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

1. У Raku `1 / 0` не падає одразу. Воно дає лінивий `Failure`. `Failure` — це значення з помилкою всередині. Він чекає, поки ви його використаєте. Raku кидає виняток, лише коли ми *використовуємо* це значення. Тут ми пробуємо вивести його через `say`.

1. Кинутий виняток має вбудований тип `X::Numeric::DivideByZero`. Гілка `when X::Numeric::DivideByZero` збігається саме з цим типом. Тут ви зіставляєте один певний тип. Ви не перехоплюєте все через `default`. Тож ви можете обробляти кожен вид помилки по-своєму.

{% include nav.html %}
