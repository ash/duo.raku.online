---
title: 'Решение: Heredoc'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. Heredoc начинается с `qq:to`, а не с `q:to`. Поэтому он интерполирует. Он работает как строка `qq`. Он вставляет скаляры `$name`, `$count` и `$item`. Он *также* выполняет код внутри текста. Блок `{$count * $price}` вычисляет `3 * 25`. Поэтому итоговая сумма `75` появляется в тексте.

1. Посмотрите на двойные кавычки в `"$item"`. Здесь это просто обычные символы. В heredoc'е кавычки — не разделители. Поэтому им не нужен обратный слэш. Raku печатает кавычки как есть. Но `$item` он всё равно интерполирует.

1. У тела и у закрывающего `END` впереди по четыре пробела. Raku убирает отступ терминатора из каждой строки. Поэтому эти четыре пробела никогда не попадают в строку. Вывод начинается у левого края.

1. Heredoc уже заканчивается переводом строки. Поэтому программа использует `print`, а не `say`. `say` добавляет ещё один перевод строки. Это даёт лишнюю пустую строку.

{% include nav.html %}
