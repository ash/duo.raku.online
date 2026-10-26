---
title: 'Розв''язання: Heredoc'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
my $name  = 'Anna';
my $item  = 'Raku Book';
my $price = 25;
my $count = 3;

print qq:to/END/;
    Dear $name,
    You ordered $count copies of "$item".
    That comes to {$count * $price} dollars.
    Thank you!
    END
```

🦋 Вихідний код можна знайти у файлі [a-heredoc.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/quoting/a-heredoc.raku).

## Вивід

```
Dear Anna,
You ordered 3 copies of "Raku Book".
That comes to 75 dollars.
Thank you!
```

## Коментарі

1. Heredoc починається з `qq:to`, а не з `q:to`. Тому він інтерполює. Він працює як рядок `qq`. Він підставляє скаляри `$name`, `$count` та `$item`. Він *також* виконує код усередині тексту. Блок `{$count * $price}` обчислює `3 * 25`. Тож сума `75` з'являється в тексті.

1. Подивіться на подвійні лапки в `"$item"`. Тут це просто звичайні символи. У heredoc-у лапки не є роздільниками. Тому їм не потрібна зворотна коса риска. Raku виводить лапки без змін. Але він усе одно інтерполює `$item`.

1. Тіло і закривальне `END` мають попереду по чотири пробіли. Raku прибирає відступ термінатора з кожного рядка. Тож ці чотири пробіли ніколи не потрапляють у рядок. Вивід починається з лівого краю.

1. Heredoc уже закінчується переходом рядка. Тому програма використовує `print`, а не `say`. `say` додає ще один перехід рядка. Це дає зайвий порожній рядок.

{% include nav.html %}
