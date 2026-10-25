---
title: Бачив раніше?
---

{% include menu.html %}

## Завдання

Напишіть програму з циклом, який робить таке:

1. Попросіть користувача ввести слово.
2. Якщо програма вже бачила це слово один раз, виведіть `Seen!`.
3. Якщо вона бачила це слово більше одного разу, виведіть `Seen 2 times!` і так далі.
3. Повторіть цикл.

## Приклад

Ось як може виглядати робота з програмою:

```console
$ raku seen-before.raku
Word: I
Word: never
Word: saw
Word: a
Word: saw
Seen!
Word: that
Word: saw
Seen 2 times!
True
Word: as
Word: that
Seen!
Word: saw
Seen 3 times!
True
Word: sawed
Word: ^C
```

Щоб зупинити програму, натисніть `Ctrl+C`.

## Рішення

✅ [Дивіться рішення](solution)

{% include nav.html %}
