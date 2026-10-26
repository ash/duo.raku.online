---
title: 'Розв''язання: Топічна змінна'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
for 'apple', 'fig', 'cherry' {
    say "$_ has {.chars} letters";
}
```

🦋 Вихідний код можна знайти у файлі [topic-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/special-variables/topic-variable.raku).

## Вивід

```
apple has 5 letters
fig has 3 letters
cherry has 6 letters
```

## Коментарі

1. У циклі `for` топічна змінна `$_` отримує кожен елемент, один за одним. Тож блок виконується тричі. Спершу `$_` дорівнює `'apple'`, потім `'fig'`, потім `'cherry'`.

1. У рядку `$_` вставляє поточне слово в текст. Виклик `.chars` дає довжину слова. Це скорочення від `$_.chars`. Обидва використовують той самий топік. Тож число завжди відповідає слову в рядку.

{% include nav.html %}
