---
title: 'Решение: Переменная-тема'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение задачи.

## Код

```raku
for 'apple', 'fig', 'cherry' {
    say "$_ has {.chars} letters";
}
```

🦋 Исходный код можно найти в файле [topic-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/special-variables/topic-variable.raku).

## Вывод

```
apple has 5 letters
fig has 3 letters
cherry has 6 letters
```

## Комментарии

1. Цикл `for` по очереди записывает каждый элемент в переменную темы `$_`. Поэтому блок выполняется три раза, и `$_` равна `'apple'`, затем `'fig'`, затем `'cherry'`.

1. Внутри строки `$_` вставляет текущее слово. Вызов `.chars`, сокращение для `$_.chars`, даёт его длину. Оба используют одну и ту же переменную темы, поэтому число всегда совпадает со словом в строке.

{% include nav.html %}
