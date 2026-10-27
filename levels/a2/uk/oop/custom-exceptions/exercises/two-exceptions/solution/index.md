---
title: 'Розв''язання: Два типи винятків'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

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

1. У першому проході цикл кидає `TooSmall`. У другому проході він кидає `TooBig`. Кожен виняток кидається всередині свого блоку. Кожен блок має свій `CATCH`.

1. Фазер `CATCH` має гілку `when` для кожного типу винятку. У кожному проході виконується лише одна гілка. Це гілка для типу кинутого винятку. Тож перший прохід виводить `small`, а другий — `big`. Кожна гілка `when` — це обробник для одного типу. Тож один набір обробників може по-різному поводитися з кожним видом помилки.

{% include nav.html %}
