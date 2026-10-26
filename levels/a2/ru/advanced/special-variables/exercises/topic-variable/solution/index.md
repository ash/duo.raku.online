---
title: 'Решение: Переменная-тема'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. В цикле `for` переменная темы `$_` по очереди получает каждый элемент. Поэтому блок выполняется три раза. Сначала `$_` равна `'apple'`, потом `'fig'`, потом `'cherry'`.

1. В строке `$_` вставляет в текст текущее слово. Вызов `.chars` даёт длину слова. Это сокращение для `$_.chars`. Оба используют одну и ту же переменную темы. Поэтому число всегда подходит к слову в строке.

{% include nav.html %}
