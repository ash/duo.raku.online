---
title: 'Решение: Сырая строка'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
say Q{$x and \n};
```

🦋 Исходный код можно найти в файле [raw-string.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/quoting/raw-string.raku).

## Вывод

```
$x and \n
```

## Комментарии

1. `Q` — самая буквальная форма цитирования. Она ничего не интерполирует. Ещё она не обрабатывает управляющие последовательности.

1. Поэтому `$x` остаётся текстом. А `\n` остаётся двумя символами: обратным слэшем и буквой `n`.

{% include nav.html %}
