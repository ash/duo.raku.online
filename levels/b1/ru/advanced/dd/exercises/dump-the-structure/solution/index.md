---
title: 'Решение: Вывод структуры данных'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение задачи.

## Код

```raku
my @data = 'Raku', [1, 2, 3], (key => 'value');

dd @data;
say "Structure: { @data.raku }";
```

🦋 Исходный код можно найти в файле [dump-the-structure.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/dd/dump-the-structure.raku).

## Вывод

```
["Raku", [1, 2, 3], :key("value")]
Structure: ["Raku", [1, 2, 3], :key("value")]
```

## Комментарии

1. `dd @data` печатает содержимое массива в форме, похожей на код. Этот вывод идёт в стандартный поток ошибок.

1. Метод `.raku` возвращает то же представление в виде строки. Затем эта строка вставляется в обычное сообщение с помощью кода в фигурных скобках. Потом `say` печатает сообщение в стандартный поток вывода.

1. Здесь две строки выглядят одинаково, но они проходят через разные потоки вывода. Первая приходит от `dd` и идёт в стандартный поток ошибок. Вторая приходит от `say` и идёт в стандартный поток вывода. Сравните:

```console
$ raku t.raku > /dev/null
["Raku", [1, 2, 3], :key("value")]

$ raku t.raku 2&> /dev/null
Structure: ["Raku", [1, 2, 3], :key("value")]
```

{% include nav.html %}
