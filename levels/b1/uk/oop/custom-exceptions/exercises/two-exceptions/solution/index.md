---
title: 'Розв''язання: Два типи винятків'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

🦋 Вихідний код можна знайти у файлі [two-exceptions.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/custom-exceptions/two-exceptions.raku).

## Вивід

```
small
big
```

## Коментарі

1. Цикл кидає `TooSmall` у першому проході й `TooBig` у другому. Кожен із них кидається всередині власного блоку, який має власний `CATCH`.

1. Фазер `CATCH` має гілку `when` для кожного типу винятку. У кожному проході виконується лише та гілка, що відповідає кинутому типу. Тож перший прохід виводить `small`, а другий — `big`. Саме так один набір обробників по-різному реагує на кожен вид помилки.

{% include nav.html %}
