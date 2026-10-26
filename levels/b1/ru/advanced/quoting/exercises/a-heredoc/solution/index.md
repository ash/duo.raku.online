---
title: 'Решение: Heredoc'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение задачи.

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

🦋 Исходный код можно найти в файле [a-heredoc.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/quoting/a-heredoc.raku).

## Вывод

```
Dear Anna,
You ordered 3 copies of "Raku Book".
That comes to 75 dollars.
Thank you!
```

## Комментарии

1. Heredoc начинается с `qq:to`, а не с `q:to`, поэтому он интерполирует. Как и строка `qq`, он подставляет скаляры `$name`, `$count` и `$item`. Он *также* выполняет код внутри текста: блок `{$count * $price}` вычисляет `3 * 25`. Поэтому итоговая сумма, `75`, появляется прямо в тексте.

1. Двойные кавычки вокруг `"$item"` здесь — просто обычные символы. Внутри heredoc'а нет разделителя, который нужно экранировать. Поэтому кавычки выводятся так, как написаны, а `$item` всё равно интерполируется.

1. У тела и у закрывающего `END` одинаковый отступ в четыре пробела. Отступ терминатора удаляется из каждой строки. Поэтому эти четыре пробела никогда не попадают в строку. Вывод начинается у левого края.

1. Heredoc уже заканчивается переводом строки. Поэтому в коде используется `print`, а не `say`. С `say` вы бы получили второй перевод строки и лишнюю пустую строку.

{% include nav.html %}
