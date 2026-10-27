---
title: 'Розв''язання: Завелике'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

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

🦋 Вихідний код можна знайти у файлі [too-big.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/custom-exceptions/too-big.raku).

## Вивід

```
Value 30 is within the limit
Value 99 exceeds the limit of 50
Try a value up to 50.
Value 60 exceeds the limit of 50
Try a value up to 50.
```

## Коментарі

1. `TooBig is Exception` робить клас винятком. Його можна кинути. Він зберігає два значення, `value` та `limit`. Його метод `message` вставляє обидва в текст.

1. `.throw` кидає виняток. `when TooBig` зіставляється з ним за типом. Код у `when TooBig` — це обробник. Він робить більше, ніж просто виводить повідомлення. Він також читає атрибут `limit` із перехопленого об'єкта. З ним обробник дає корисну підказку. Ось чому власний виняток кращий за простий рядок. Обробник отримує дані в чіткій формі. Він може працювати з цими даними.

1. Програма кидає виняток **лише** тоді, коли `$value > $limit`. Для `30` винятку немає. Тіло циклу виконується до кінця. Його `say` виводить, що значення не виходить за межу. Для `99` та `60` спрацьовує `throw`. Тож програма пропускає цей `say`. Натомість виняток обробляє `CATCH`. Тут `CATCH` стоїть прямо в тілі циклу `for`. Тож перехоплений виняток завершує лише поточний прохід. Потім цикл просто йде далі до наступного значення.

{% include nav.html %}
