---
title: 'Розв''язання: Завелике'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. `TooBig is Exception` робить клас винятком, який можна кинути. Він несе два значення, `value` та `limit`. Його метод `message` вставляє обидва в текст, який він повідомляє.

1. `.throw` кидає виняток, а `when TooBig` зіставляється з ним за типом. Обробник робить більше, ніж просто виводить повідомлення. Він напряму читає атрибут `limit` із перехопленого об'єкта, щоб дати корисну підказку. Ось чому власний виняток кращий за простий рядок. Обробник отримує дані з чіткою структурою, з якими може щось робити.

1. Виняток кидається **лише** тоді, коли `$value > $limit`. Для `30` винятку немає, і тіло циклу доходить до свого `say`. Він виводить, що значення не виходить за межу. Для `99` та `60` спрацьовує `throw`, тож цей `say` пропускається. Натомість виняток обробляє `CATCH`. Тіло `for` саме є тим блоком, який охороняє `CATCH`. Тож перехоплений виняток завершує лише поточний прохід. Потім цикл просто переходить до наступного значення.

{% include nav.html %}
